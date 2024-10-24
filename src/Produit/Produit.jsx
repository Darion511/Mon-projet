import React, { useState, useContext } from 'react';
import 'bootstrap/dist/css/bootstrap.min.css';
import { useNavigate } from 'react-router-dom';
import { CartContext } from '../Panier_Etudiant/Achats'; // Importer le contexte
import NavigatorF from '../AccueilFinal/NavigatorF';

const Produit = () => {
    const [quantity, setQuantity] = useState(1); 
    const pricePerUnit = 10;
    const totalPrice = quantity * pricePerUnit;
    const { addToCart } = useContext(CartContext); // Utiliser le contexte
    const navigate = useNavigate(); // Initialiser useNavigate

    const handleQuantityChange = (e) => {
        setQuantity(e.target.value);
    };

    const handleAddToCart = () => {
        const item = {
            title: "Votre Produit", // Remplace par le titre réel
            quantity: quantity,
            total: totalPrice,
            imageUrl: "", // Remplace par l'URL de l'image réelle
        };
        addToCart(item);
        navigate('/panier'); // Rediriger vers le panier
    };

    return (
        <div>
            <NavigatorF/>
            <div className="container d-flex align-items-center justify-content-center vh-100">
                <div className="row align-items-center border py-3 px-3 bg-white rounded-4">
                    <div className="col-md-4">
                        <img 
                            src="" // Remplace par l'URL de l'image réelle
                            alt="Produit" 
                            className="img-fluid"
                        />
                    </div>
                    <div className="col-md-8">
                        <h2 className="imprint-text "style={{fontFamily:'Imprint MT Shadow'}}>Votre Produit</h2>
                        <p className="imprint-text "style={{fontFamily:'Imprint MT Shadow'}}>Ce met est le meilleur met au monde. Venu du congo ce met fait tréssallir les papilles.</p>
                        <div className="form-group">
                            <label htmlFor="quantity" className="imprint-text "style={{fontFamily:'Imprint MT Shadow'}}>Quantité :</label>
                            <input 
                                type="number" 
                                id="quantity" 
                                className="form-control w-25 mb-3" 
                                value={quantity}
                                onChange={handleQuantityChange}
                                min="1"
                            />
                        </div>
                        <div className="form-group align-items-center">
                            <label htmlFor="totalPrice" className="imprint-text "style={{fontFamily:'Imprint MT Shadow'}}>Prix Total :</label>
                            <input 
                                type="text" 
                                id="totalPrice" 
                                className="form-control w-25" 
                                value={`${totalPrice} Francs`}
                                readOnly
                            />
                        </div>
                        <button className="btn  mt-4 rounded-4" onClick={handleAddToCart} style={{fontFamily:'Imprint MT Shadow',backgroundColor:'#CFBD97'}}>
                            Ajouter au panier
                        </button>
                    </div>
                </div>
            </div>
        </div>
    );
};

export default Produit;