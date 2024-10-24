import React, { useContext, useEffect } from 'react';
import 'bootstrap/dist/css/bootstrap.min.css'; 
import { useNavigate } from 'react-router-dom';
import { ProductContext } from '../Admin/ProductContext';  // Importer le contexte des produits
import NavigatorF from '../AccueilFinal/NavigatorF';
import Address from '../Panier_Etudiant/Address';

const Menu = () => {
  const { produits, setProduits } = useContext(ProductContext);  // Récupérer les produits du contexte et la méthode pour les mettre à jour
  const navigate = useNavigate();

  // Fonction pour récupérer les menus du backend
  useEffect(() => {
    const fetchMenus = async () => {
      try {
        const response = await fetch('http://localhost/Backend/routes/routes.php/api/menus');
        if (!response.ok) {
          throw new Error('Erreur lors de la récupération des menus');
        }
        const data = await response.json();
        setProduits(data); // Mettre à jour les produits avec les données récupérées
      } catch (error) {
        console.error('Erreur lors de la récupération des menus:', error);
      }
    };

    fetchMenus();  // Appeler la fonction lors du chargement du composant
  }, [setProduits]);  // Dépendance pour ne pas relancer l'effet inutilement

  const VersA = () => {
    navigate('/produit');
  }

  return (
    <div className="container mx-5">
      <NavigatorF/>

      <div className="d-flex justify-content-between align-items-center my-5">
        <h2 className="imprint-text text-white" style={{ fontFamily: 'Imprint MT Shadow' }}>Menu</h2>
        <div className="d-flex align-items-center">
          <input type="text" className="form-control me-2" placeholder="Rechercher..." />
        </div>
      </div>

      <div>
        <h3 className="mb-4 imprint-text text-white" style={{ fontFamily: 'Imprint MT Shadow' }}>Nos produits</h3>
        <div className="row">
          {produits.map((prod, index) => (
            prod.visibilite && (  // Ne montrer que les produits avec une visibilité définie à true
              <div key={index} className="col-md-6 col-lg-4 mb-4">
                <div className="card h-100 rounded-4 text-white" style={{ backgroundImage: "linear-gradient(#000000, #757575)" }}>
                <img
  src={`http://localhost/Backend/images/${prod.image_url}`}  
  className="card-img-top my-2 "
  alt={`Produit ${prod.nom}`}
  style={{ width: '354px', height: '200px', objectFit: 'cover' }} // Taille fixe avec objectFit
/>

                  <div className="card-body">
                    <h5 className="card-title imprint-text">{prod.nom}</h5>
                    <p className="card-text imprint-text">{prod.description}</p>
                    <p className="card-text imprint-text">Prix: {prod.prix} Fcfa</p> {/* Affichage du prix */}
                    <p className="card-text imprint-text">Stock: {prod.stock}</p> {/* Affichage du stock */}
                    <button className="btn imprint-text mx-4 rounded-5" onClick={VersA} style={{ fontFamily: 'Imprint MT Shadow', backgroundColor: '#CFBD97' }}>
                      Commander
                    </button>
                  </div>
                </div>
              </div>
            )
          ))}
        </div>
      </div>
      <Address />
    </div>
  );
};

export default Menu;
