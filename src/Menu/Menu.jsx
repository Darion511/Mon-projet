import React, { useContext } from 'react';
import 'bootstrap/dist/css/bootstrap.min.css'; 
import { useNavigate } from 'react-router-dom';

import { ProductContext } from '../Admin/ProductContext';  // Importer le contexte des produits
import NavigatorF from '../AccueilFinal/NavigatorF';
import Address from '../Panier_Etudiant/Address';

const Menu = () => {
  const { produits } = useContext(ProductContext);  // Récupérer les produits du contexte

  const navigate = useNavigate();

    const VersA = () => {
      navigate('/produit');
    }
  return (
    <div className="container-fluid ">
      <NavigatorF/>

      <div className="d-flex justify-content-between align-items-center my-5">
        <h2  className="imprint-text text-white mx-5"style={{fontFamily:'Imprint MT Shadow'}} >Menu</h2>
        <div className="d-flex align-items-center">
          <input type="text" className="form-control me-2" placeholder="Rechercher..." />
        </div>
      </div>

      <div>
        <h3 className="mb-4 imprint-text text-white mx-5"style={{fontFamily:'Imprint MT Shadow'}}>Nos produits</h3>
        <div className="row mx-5">
          {produits.map((prod, index) => (
            <div key={index} className="col-md-2 col-lg-3 mb-4">
              <div className="card h-100 rounded-4 text-white" style={{ backgroundImage: "linear-gradient(#000000, #757575)"}}>
                <img
                  src={prod.imgSrc || ''} 
                  className="card-img-top my-2"
                  alt={`Produit ${index + 1}`}
                />
                <div className="card-body">
                  <h5 className="card-title imprint-text">{prod.title}</h5>
                  <p className="card-text imprint-text">{prod.description}</p>
                  <button className="btn  imprint-text mx-4 rounded-5"onClick={VersA} style={{fontFamily:'Imprint MT Shadow',backgroundColor:'#CFBD97'}}>
                        Commander
                  </button>
                </div>
              </div>
            </div>
          ))}
        </div>
      </div>
      <Address/>
    </div>
  );
};

export default Menu;
