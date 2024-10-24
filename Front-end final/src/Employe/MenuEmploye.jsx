import React, { useContext } from 'react';
import 'bootstrap/dist/css/bootstrap.min.css'; 
import { ProductContext } from '../Admin/ProductContext';  
import NavEmploye from './NavEmploye';
import Address from '../Panier_Etudiant/Address';

const MenuEmploye = () => {
  const { produits } = useContext(ProductContext);  

  return (
    <div className="container ">
      <NavEmploye/>

      <div className="d-flex justify-content-between align-items-center my-5">
        <h2  className="imprint-text text-white"style={{fontFamily:'Imprint MT Shadow'}} >MenuEmploye</h2>
        
        <div className="d-flex align-items-center">
          <input type="text" className="form-control me-2" placeholder="Rechercher..." />
        </div>
      </div>

      <div>
        <h3 className="mb-4 imprint-text text-white"style={{fontFamily:'Imprint MT Shadow'}}>Nos produits</h3>
        <div className="row">
          {produits.map((prod, index) => (
            <div key={index} className="col-md-6 col-lg-4 mb-4">
              <div className="card h-100">
                <img
                  src={prod.imgSrc || ''} 
                  className="card-img-top my-2"
                  alt={`Produit ${index + 1}`}
                />
                <div className="card-body">
                  <h5 className="card-title imprint-text">{prod.title}</h5>
                  <p className="card-text imprint-text">{prod.description}</p>
                  <button className="btn btn-primary imprint-text mx-4">
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

export default MenuEmploye;
