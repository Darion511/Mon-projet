import { useState } from 'react';
// import NavigatorC from "./NavigatorC";
import Address from "../Panier_Etudiant/Address";
import NavigatorA from '../Accueil/NavigatorA';


const contact = () => {
    const [quantity, setQuantity] = useState(1); 
    const pricePerUnit = 10;
    const totalPrice = quantity * pricePerUnit;

    const handleQuantityChange = (e) => {
        setQuantity(e.target.value);
    };

    return (
        <div>
            <NavigatorA/>
            <div className="container d-flex align-items-center justify-content-center vh-100">
                <div className="row align-items-center border py-3 px-3  rounded-5"style={{backgroundColor:'white'}}>
                    <div className="col-md-8">
                        <h2 className="imprint-text "style={{fontFamily:'Imprint MT Shadow'}}>Espace Commentaires</h2>
                        <p className="imprint-text  "style={{fontFamily:'Imprint MT Shadow'}}> Parceque nous sommes la pour vous servir </p>
                        <div className="mb-3">
                          <input 
                              type="Nom" 
                              className="form-control mb-3 rounded-5" 
                              placeholder="Votre nom" 
                          />
                          <input 
                              type="Prenom" 
                              className="form-control mb-3  rounded-5" 
                              placeholder="Votre prénom" 
                          />
                          
                          <input 
                              type="Commentaire" 
                              className="form-control mb-3  rounded-5" 
                              placeholder="Votre commentaire" 
                          />

                      </div>
                        <button className="btn  mt-3 mx-1  rounded-5 w-100"style={{fontFamily:'Imprint MT Shadow',backgroundColor:'#CFBD97'}}>Submit</button>
                    </div>
                </div>
            </div>
            <Address/>
        </div>
    );
};

export default contact;