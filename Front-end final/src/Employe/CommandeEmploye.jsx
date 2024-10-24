import React, { useContext, useState, useEffect } from 'react';
import 'bootstrap/dist/css/bootstrap.min.css';
import NavEmploye from './NavEmploye';
import { PanierContext } from './PanierContexte'; // Assurez-vous d'importer le contexte du panier
import Address from '../Panier_Etudiant/Address';
import { CommandeContext } from '../Historique/CommandeContext';

const CommandeE = () => {
  const { commandes = [], notifierCommandePrete } = useContext(CommandeContext);
  const { panier = [] } = useContext(PanierContext); // Récupération des informations du panier
  const [updatedCommandes, setUpdatedCommandes] = useState([]);

  useEffect(() => {
    if (Array.isArray(commandes)) {
      setUpdatedCommandes(commandes);
    }
  }, [commandes]);

  const handleStatusToggle = (index) => {
    const newCommandes = updatedCommandes.map((commande, commandeIndex) =>
      commandeIndex === index
        ? { ...commande, status: commande.status === 'En cours' ? 'Prêt' : 'En cours' }
        : commande
    );
    setUpdatedCommandes(newCommandes);
  };

  useEffect(() => {
    updatedCommandes.forEach(commande => {
      if (commande.status === 'Prêt') {
        notifierCommandePrete(commande.id);
      }
    });
  }, [updatedCommandes, notifierCommandePrete]);

  return (
    <div className="container">
      <NavEmploye />

      <div className="d-flex justify-content-between align-items-center my-4">
        <h1 className="imprint-text text-white"style={{fontFamily:'Imprint MT Shadow'}}>Vos Commandes</h1>
        <input type="text" className="form-control w-25" placeholder="Rechercher..." />
      </div>

      <table className="table table-bordered">
        <thead>
          <tr>
            <th scope="col">ID Commande</th>
            <th scope="col">Articles</th>
            <th scope="col">Quantité</th>
            <th scope="col">Total</th>
            <th scope="col">Statut</th>
          </tr>
        </thead>
        <tbody>
          {updatedCommandes.length > 0 ? (
            updatedCommandes.map((commande, index) => (
              <tr key={commande.id}>
                <td>{commande.id}</td>
                <td>
                  {commande.items && commande.items.length > 0 ? (
                    commande.items.map(item => (
                      <div key={item.id}>{item.title}</div>
                    ))
                  ) : (
                    <div>Aucun article</div>
                  )}
                </td>
                <td>
                  {commande.items && commande.items.length > 0 ? (
                    commande.items.map(item => (
                      <div key={item.id}>{item.quantity}</div>
                    ))
                  ) : (
                    <div>0</div>
                  )}
                </td>
                <td>{commande.total} Francs</td>
                <td>
                  <button
                    className={`btn ${commande.status === 'En cours' ? 'btn-warning' : 'btn-success'}`}
                    onClick={() => handleStatusToggle(index)}
                  >
                    {commande.status}
                  </button>
                </td>
              </tr>
            ))
          ) : (
            <tr>
              <td colSpan="5" className="text-center">Aucune commande trouvée.</td>
            </tr>
          )}
        </tbody>
      </table>

      <h2 className="imprint-text my-4 text-white"style={{fontFamily:'Imprint MT Shadow'}}>Informations du Panier</h2>
      <ul className="list-group">
        {panier.length > 0 ? (
          panier.map(item => (
            <li key={item.id} className="list-group-item">
              {item.title} - {item.quantity} - {item.price} Francs
            </li>
          ))
        ) : (
          <li className="list-group-item">Aucun article dans le panier.</li>
        )}
      </ul>
      <Address/>
    </div>
  );
};

export default CommandeE;
