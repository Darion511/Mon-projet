import React, { useEffect, useState } from 'react';
import 'bootstrap/dist/css/bootstrap.min.css';
import NavigaAdmin from './NavigaAdmin';
import Address from '../Panier_Etudiant/Address';

const Client = () => {
  const [clients, setClients] = useState([]);

  // Fonction pour récupérer les étudiants depuis le backend
  const fetchClients = async () => {
    try {
      const response = await fetch('http://localhost/backend/admin/client.php'); 
      const data = await response.json();
      setClients(data);
    } catch (error) {
      console.error('Erreur lors de la récupération des étudiants:', error);
    }
  };

  const handleDeleteClient = async (id) => {
    const confirmDelete = window.confirm("Êtes-vous sûr de vouloir supprimer cet étudiant ?");
    if (!confirmDelete) return;
  
    console.log("Désactivation de l'étudiant avec ID:", id);
    try {
        const response = await fetch(`http://localhost/backend/admin/client.php`, {
            method: 'DELETE',
            headers: {
                'Content-Type': 'application/json',
            },
            body: JSON.stringify({ id }),
        });
  
        const textResponse = await response.text();
        console.log("Réponse brute du serveur:", textResponse);
  
        const result = JSON.parse(textResponse);
        if (!response.ok) {
            throw new Error(result.error || 'Erreur lors de la désactivation de l\'étudiant');
        }
  
        fetchClients(); // Récupérer à nouveau les étudiants après suppression
    } catch (error) {
        console.error('Erreur:', error);
    }
  };
  

  useEffect(() => {
    fetchClients();
  }, []);

  return (
    <div className="container">
      <NavigaAdmin />
      <div className="d-flex justify-content-between align-items-center my-4">
        <h1 className="imprint-text text-white" style={{ fontFamily: 'Imprint MT Shadow' }}>Vos étudiants</h1>
        <input 
          type="text" 
          className="form-control w-25" 
          placeholder="Rechercher..." 
        />
      </div> 

      <table className="table table-bordered">
        <thead>
          <tr>
            <th scope="col" style={{ fontFamily: 'Imprint MT Shadow' }}>Nom</th>
            <th scope="col" style={{ fontFamily: 'Imprint MT Shadow' }}>Email</th>
            <th scope="col" style={{ fontFamily: 'Imprint MT Shadow' }}>Localisation</th>
            <th scope="col" style={{ fontFamily: 'Imprint MT Shadow' }}>Téléphone</th>
            <th scope="col" style={{ fontFamily: 'Imprint MT Shadow' }}>Points de fidélité</th>
            <th scope="col" style={{ fontFamily: 'Imprint MT Shadow' }}>Action</th>
          </tr>
        </thead>
        <tbody>
          {clients.map((client) => (
            <tr key={client.id}>
              <td>{client.nom}</td>
              <td>{client.email}</td>
              <td>{client.localisation}</td>
              <td>{client.téléphone}</td>
              <td>{client.points_fidelite}</td>
              <td className='d-flex justify-content-center'>
                <button 
                  className="btn border" 
                  style={{ fontFamily: 'Imprint MT Shadow' }} 
                  onClick={() => handleDeleteClient(client.id)}
                >
                  Supprimer
                </button>
              </td>
            </tr>
          ))}
        </tbody>
      </table>
      <Address />
    </div>
  );
};

export default Client;
