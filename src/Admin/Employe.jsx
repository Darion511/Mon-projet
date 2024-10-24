import React, { useState } from 'react';
import Navbar from './NavigaAdmin';
import Address from '../Panier_Etudiant/Address';

const Employe = () => {
    const [employees, setEmployees] = useState([...Array(10)].map((_, index) => ({
      name: `Nom ${index + 1}`,
      surname: `Prénom ${index + 1}`, // Ajout du prénom
      photo: '', // Chemin de la photo
    })));
  
    const [selectedEmployee, setSelectedEmployee] = useState(null);
    const [showModal, setShowModal] = useState(false);
    const [newPhoto, setNewPhoto] = useState('');
    const [name, setName] = useState('');
    const [surname, setSurname] = useState('');
  
    const handleEditClick = (employee) => {
      setSelectedEmployee(employee);
      setName(employee.name);
      setSurname(employee.surname);
      setShowModal(true);
    };
  
    const handleSave = () => {
      const updatedEmployees = employees.map(emp => 
        emp.name === selectedEmployee.name ? { ...emp, name, surname, photo: newPhoto } : emp
      );
      setEmployees(updatedEmployees);
      setShowModal(false);
      setNewPhoto('');
    };
  
    const handleDelete = (employeeName) => {
      // Supprime l'employé en filtrant la liste
      const updatedEmployees = employees.filter(emp => emp.name !== employeeName);
      setEmployees(updatedEmployees);
    };
  
    return (
      <div className="div1 bg-black">
         <div className="container">
        <Navbar />
        <div className="d-flex justify-content-between align-items-center my-4 ">
          <h1 className="imprint-text text-white"style={{fontFamily:'Imprint MT Shadow'}}>Vos Employés</h1>
          <input
            type="text"
            className="form-control w-25"
            placeholder="Rechercher..."
          />
        </div>
  
        <table className=" table-bordered w-100 mt-5">
          <thead>
            <tr>
              <th scope="col "style={{fontFamily:'Imprint MT Shadow',backgroundColor:'black',color:"white"}}>Nom</th>
              <th scope="col"style={{fontFamily:'Imprint MT Shadow',backgroundColor:'black',color:"white"}}>Prénom</th> {/* Ajout de la colonne Prénom */}
              <th scope="col"style={{fontFamily:'Imprint MT Shadow',backgroundColor:'black',color:"white"}}>Photo</th>
              <th scope="col"style={{fontFamily:'Imprint MT Shadow',backgroundColor:'black',color:"white"}}>Action</th>
            </tr>
          </thead>
          <tbody>
            {employees.map((employee, index) => (
              <tr key={index}style={{fontFamily:'Imprint MT Shadow',backgroundColor:'black',color:"white"}}> 
                <td>{employee.name}</td>
                <td>{employee.surname}</td> {/* Affichage du Prénom */}
                <td><img src={employee.photo} alt="Photo" style={{ width: '50px', height: '50px' }} /></td>
                <td className=' justify-center space-between 'style={{fontFamily:'Imprint MT Shadow',backgroundColor:'black',color:"white"}}>
                  <button className="btn border text-white mx-2 rounded-5" onClick={() => handleEditClick(employee)}style={{fontFamily:'Imprint MT Shadow'}}>Éditer</button>
                  <button className="btn border text-white rounded-5" onClick={() => handleDelete(employee.name)}style={{fontFamily:'Imprint MT Shadow'}}>Supprimer</button> {/* Appelle la fonction handleDelete */}
                </td>
              </tr>
            ))}
          </tbody>
        </table>
  
        {/* Modal */}
        {showModal && (
          <div className="modal show" style={{ display: 'block' }}>
            <div className="modal-dialog modal-lg" style={{ maxWidth: '800px' }}> {/* Largeur du modal */}
              <div className="modal-content">
                <div className="modal-header">
                  <h5 className="modal-title">Modifier l'employé</h5>
                  <button type="button" className="close" onClick={() => setShowModal(false)}>
                    &times;
                  </button>
                </div>
                <div className="modal-body">
                  <div className="mb-3">
                    <label htmlFor="employeeName" className="form-label">Nom</label>
                    <input 
                      type="text" 
                      className="form-control" 
                      id="employeeName" 
                      value={name} 
                      onChange={(e) => setName(e.target.value)} // Modification du nom
                    />
                  </div>
                  <div className="mb-3">
                    <label htmlFor="employeeSurname" className="form-label">Prénom</label>
                    <input 
                      type="text" 
                      className="form-control" 
                      id="employeeSurname" 
                      value={surname} 
                      onChange={(e) => setSurname(e.target.value)} // Modification du prénom
                    />
                  </div>
                  <div className="mb-3">
                    <label htmlFor="employeePhoto" className="form-label">Télécharger une nouvelle photo</label>
                    <input type="file" className="form-control" id="employeePhoto" onChange={(e) => {
                      const file = e.target.files[0];
                      if (file) {
                        setNewPhoto(URL.createObjectURL(file)); // Utilisez l'URL de l'image pour l'afficher
                      }
                    }} />
                  </div>
                  {newPhoto && (
                    <div className="mb-3 text-center" >
                      <img src={newPhoto} alt="Aperçu" className="img-fluid" style={{ width: '200px', height: '200px' }} />
                    </div>
                  )}
                </div>
                <div className="modal-footer">
                  <button type="button" className="btn btn-secondary  rounded-5" onClick={() => setShowModal(false)}>Fermer</button>
                  <button type="button" className="btn rounded-5" onClick={handleSave}style={{fontFamily:'Imprint MT Shadow',backgroundColor:'#CFBD97'}}>Enregistrer les modifications</button>
                </div>
              </div>
            </div>
          </div>
        )}
  
      </div>
      <div className=' mt-5'>
          <Address/>
        </div>
      </div>
    );
  };
  
export default Employe;
  