import React, { useContext, useState } from 'react'
import 'bootstrap/dist/css/bootstrap.min.css';
import { CartContext } from './Achats'; // Importer le contexte
import NavigatorF from '../AccueilFinal/NavigatorF';
import { CommandeContext } from '../Historique/CommandeContext'; 
import Address from './Address';

const AchatsFinal = () => {
    const { cartItems } = useContext(CartContext);
    const { addCommande } = useContext(CommandeContext); // Doit fonctionner si CommandeProvider est correctement configuré
    const [code, setCode] = useState('');
    const totalAmount = cartItems.reduce((sum, item) => sum + item.total, 0);
    const [points, setPoints] = useState(0);

    const handleApplyCode = () => {
        if (code === 'CODEPROMO') {
            setPoints(totalAmount * 0.1);
            alert('Code appliqué avec succès!');
        } else {
            alert('Code invalide.');
        }
    };

    const handlePay = () => {
        const commandeDetails = {
            nom: 'Nom de la personne', // Vous pouvez remplacer ceci par une entrée utilisateur appropriée
            montant: totalAmount,
            points: points,
            date: new Date().toLocaleString(), // Récupérer la date actuelle
        };
        addCommande(commandeDetails); // Ajoute la commande au contexte
        // Redirection ou autre logique de paiement ici
    };
    

    return (
        <div className="container my-5">
            
            <div className="row my-4">
                {cartItems.map(item => (
                    <div key={item.id} className="d-flex align-items-center border-bottom py-3">
                        <img src={item.imageUrl} alt={item.title} style={{ width: '100px', height: 'auto', marginRight: '20px' }} />
                        <div className="flex-grow-1">
                            <h5>{item.title}</h5>
                            <p>Quantité: {item.quantity}</p>
                            <p>Total: {item.total} Francs</p>
                        </div>
                    </div>
                ))}
            </div>
            <div className="d-flex justify-content-between align-items-center border p-3 my-5">
                <h4>Total du panier: {totalAmount} Francs</h4>
                <div>
                    <input
                        type="text"
                        className="form-control mb-2"
                        placeholder="Code marchand"
                        value={code}
                        onChange={(e) => setCode(e.target.value)}
                    />
                    <button className="btn btn-primary" onClick={handleApplyCode}>
                        Appliquer le code
                    </button>
                </div>
                <h5>Points rapportés: {points}</h5>
                <button className="btn btn-success" onClick={handlePay}>
                    Payer
                </button>
            </div>
            
        </div>
    );
};

export default AchatsFinal;
