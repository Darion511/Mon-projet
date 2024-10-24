import React, { useState, useEffect } from 'react';
import Navbar from './NavigaAdmin';
import Address from '../Panier_Etudiant/Address';

const Employe = () => {
  const [employees, setEmployees] = useState([]);
  const [selectedEmployee, setSelectedEmployee] = useState(null);
  const [showModal, setShowModal] = useState(false);
  const [newPhoto, setNewPhoto] = useState('');
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');

  // Charger les employés depuis la base de données
  useEffect(() => {
    fetch('http://localhost/backend/Employe.php')
      .then(response => {
        if (!response.ok) {
          throw new Error('Erreur lors de la récupération des employés');
        }
        return response.json();
      })
      .then(data => {
        console.log('Employés récupérés:', data);
        setEmployees(data);
      })
      .catch(error => console.error('Erreur de chargement:', error));
  }, []);

  const handleEditClick = (employee) => {
    setSelectedEmployee(employee);
    setEmail(employee.email);
    setPassword(''); // Ne pas afficher le mot de passe pour des raisons de sécurité
    setShowModal(true);
  };

  const handleSave = () => {
    // Effectuer la requête PUT pour mettre à jour l'employé
    fetch(`http://localhost/backend/Employe.php`, {
      method: 'PUT',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ id: selectedEmployee.id, email, photo: newPhoto })
    })
    .then(response => {
      if (response.ok) {
        console.log('Employé modifié');
        // Récupérez de nouveau les employés après la mise à jour
        return fetch('http://localhost/backend/Employe.php');
      } else {
        throw new Error('Erreur de mise à jour');
      }
    })
    .then(response => response.json())
    .then(data => {
      setEmployees(data);
      setShowModal(false);
      setNewPhoto('');
    })
    .catch(error => console.error('Erreur de requête:', error));
  };

  const handleDelete = (employeeId) => {
    if (window.confirm("Êtes-vous sûr de vouloir supprimer cet employé ?")) {
      fetch(`http://localhost/backend/Employe.php?id=${employeeId}`, {
        method: 'DELETE',
      })
      .then(response => {
        if (response.ok) {
          console.log('Employé supprimé');
          // Rafraîchissez la liste des employés après la suppression
          setEmployees(prevEmployees => prevEmployees.filter(emp => emp.id !== employeeId));
        } else {
          throw new Error('Erreur de suppression');
        }
      })
      .catch(error => console.error('Erreur de requête:', error));
    }
  };

  const handleAddEmployee = () => {
    const newEmployee = { email, password, photo: newPhoto };
    fetch('http://localhost/backend/Employe.php', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify(newEmployee),
    })
    .then(response => {
      if (response.ok) {
        console.log('Employé ajouté');
        return fetch('http://localhost/backend/Employe.php');
      } else {
        throw new Error('Erreur d\'ajout');
      }
    })
    .then(response => response.json())
    .then(data => {
      setEmployees(data);
      setShowModal(false);
      setNewPhoto('');
    })
    .catch(error => console.error('Erreur de requête:', error));
  };

  return (
    <div className="container">
      <Navbar />
      <div className="d-flex justify-content-between align-items-center my-4">
        <h1 className="imprint-text text-white" style={{ fontFamily: 'Imprint MT Shadow' }}>Vos Employés</h1>
        <input
          type="text"
          className="form-control w-25"
          placeholder="Rechercher..."
        />
      </div>

      <button className="btn btn-primary mb-3" onClick={() => setShowModal(true)}>
        Ajouter un employé
      </button>

      <table className="table table-bordered">
        <thead>
          <tr>
            <th scope="col" style={{ fontFamily: 'Imprint MT Shadow' }}>Email</th>
            <th scope="col" style={{ fontFamily: 'Imprint MT Shadow' }}>Photo</th>
            <th scope="col" style={{ fontFamily: 'Imprint MT Shadow' }}>Action</th>
          </tr>
        </thead>
        <tbody>
          {employees.map((employee) => (
            <tr key={employee.id}>
              <td>{employee.email}</td>
              <td>
                <img src={employee.photo} alt="Photo" style={{ width: '50px', height: '50px' }} />
              </td>
              <td className='d-flex justify-center space-between'>
                <button className="btn border" onClick={() => handleEditClick(employee)} style={{ fontFamily: 'Imprint MT Shadow' }}>Éditer</button>
                <button className="btn border" onClick={() => handleDelete(employee.id)} style={{ fontFamily: 'Imprint MT Shadow' }}>Supprimer</button>
              </td>
            </tr>
          ))}
        </tbody>
      </table>

      {/* Modal pour modifier/ajouter */}
      {showModal && (
        <div className="modal show" style={{ display: 'block' }}>
          <div className="modal-dialog modal-lg" style={{ maxWidth: '800px' }}>
            <div className="modal-content">
              <div className="modal-header">
                <h5 className="modal-title">{selectedEmployee ? "Modifier l'employé" : "Ajouter un employé"}</h5>
                <button type="button" className="close" onClick={() => setShowModal(false)}>
                  &times;
                </button>
              </div>
              <div className="modal-body">
                <div className="mb-3">
                  <label htmlFor="employeeEmail" className="form-label">Email</label>
                  <input 
                    type="email" 
                    className="form-control" 
                    id="employeeEmail" 
                    value={email} 
                    onChange={(e) => setEmail(e.target.value)} 
                  />
                </div>
                <div className="mb-3">
                  <label htmlFor="employeePassword" className="form-label">Mot de passe</label>
                  <input 
                    type="password" 
                    className="form-control" 
                    id="employeePassword" 
                    value={password} 
                    onChange={(e) => setPassword(e.target.value)} 
                  />
                </div>
                <div className="mb-3">
                  <label htmlFor="employeePhoto" className="form-label">Télécharger une nouvelle photo</label>
                  <input type="file" className="form-control" id="employeePhoto" onChange={(e) => {
                    const file = e.target.files[0];
                    if (file) {
                      setNewPhoto(URL.createObjectURL(file));
                    }
                  }} />
                </div>
                {newPhoto && (
                  <div className="mb-3 text-center">
                    <img src={newPhoto} alt="Aperçu" className="img-fluid" style={{ width: '200px', height: '200px' }} />
                  </div>
                )}
              </div>
              <div className="modal-footer">
                <button type="button" className="btn btn-secondary" onClick={() => setShowModal(false)}>Fermer</button>
                <button type="button" className="btn btn-primary" onClick={selectedEmployee ? handleSave : handleAddEmployee}>
                  {selectedEmployee ? "Enregistrer les modifications" : "Ajouter l'employé"}
                </button>
              </div>
            </div>
          </div>
        </div>
      )}
      <Address />
    </div>
  );
};

export default Employe;
