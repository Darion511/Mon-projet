// historique.jsx
import React, { useContext } from 'react';
import 'bootstrap/dist/css/bootstrap.min.css';
import { CommandeContext } from './CommandeContext'; // Chemin correct vers votre contexte

const Historique = () => {
    const { commandes } = useContext(CommandeContext); // Récupérer les commandes depuis le contexte

    return (
        <div className="container mx-5 my-5">
            <h1 className="my-4 imprint-text text-white mx-5"style={{fontFamily:'Imprint MT Shadow'}}>Historique des Commandes</h1>

            <div className="table-responsive mx-5">
                <table className="table table-bordered my-5 ">
                    <thead>
                        <tr>
                            <th scope="col">Nom</th>
                            <th scope="col">Montant</th>
                            <th scope="col">Points</th>
                            <th scope="col">Date</th> {/* Nouvelle colonne pour la date */}
                        </tr>
                    </thead>
                    <tbody>
                        {commandes.length > 0 ? (
                            commandes.map((commande, index) => (
                                <tr key={index}>
                                    <td>{commande.nom}</td>
                                    <td>{commande.montant} Francs</td>
                                    <td>{commande.points} Points</td>
                                    <td>{commande.date}</td> {/* Affichage de la date */}
                                </tr>
                            ))
                        ) : (
                            <tr>
                                <td colSpan="4" className="text-center">Aucune commande trouvée.</td>
                            </tr>
                        )}
                    </tbody>
                </table>
            </div>
        </div>
    );
};

export default Historique;
