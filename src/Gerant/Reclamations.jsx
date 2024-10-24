import React, { useEffect, useState } from 'react';
import 'bootstrap/dist/css/bootstrap.min.css';
import NavGerant from './NavGerant';
import Address from '../Panier_Etudiant/Address';

const Reclamations = () => {
    const [reclamations, setReclamations] = useState([]);

    useEffect(() => {
        const savedReclamations = JSON.parse(localStorage.getItem('reclamations')) || [];
        // Filtrer les réclamations avec des réponses non approuvées
        const nonApprouves = savedReclamations.filter((reclamation) => reclamation.reponse && !reclamation.approuve);
        setReclamations(nonApprouves);
    }, []);

    const handleApprove = (reclamation) => {
        // Approuver la réponse
        const updatedReclamations = reclamations.map((rec) =>
            rec.id === reclamation.id ? { ...rec, approuve: true } : rec
        );
        setReclamations(updatedReclamations.filter((rec) => !rec.approuve));
        localStorage.setItem('reclamations', JSON.stringify(updatedReclamations));

        alert('Réponse approuvée et visible dans les réclamations.');
    };

    const handleReject = (reclamation) => {
        // Rejeter la réponse
        const updatedReclamations = reclamations.filter((rec) => rec.id !== reclamation.id);
        setReclamations(updatedReclamations);
        const allReclamations = JSON.parse(localStorage.getItem('reclamations')) || [];
        const newReclamations = allReclamations.map((rec) =>
            rec.id === reclamation.id ? { ...rec, reponse: null, approuve: false } : rec
        );
        localStorage.setItem('reclamations', JSON.stringify(newReclamations));

        alert('Réponse rejetée.');
    };

    return (
        <div>
            <NavGerant/>
            <div className="container my-5">
                <h2 className="imprint-text mb-4">Réponses en attente de validation</h2>
                {reclamations.length === 0 ? (
                    <p>Aucune réponse en attente de validation.</p>
                ) : (
                    <table className="table table-bordered">
                        <thead>
                            <tr>
                                <th scope="col">Nom</th>
                                <th scope="col">Prénom</th>
                                <th scope="col">Commentaire</th>
                                <th scope="col">Réponse</th>
                                <th scope="col">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            {reclamations.map((reclamation) => (
                                <tr key={reclamation.id}>
                                    <td>{reclamation.nom}</td>
                                    <td>{reclamation.prenom}</td>
                                    <td>{reclamation.commentaire}</td>
                                    <td>{reclamation.reponse}</td>
                                    <td>
                                        <button
                                            className="btn btn-success me-2"
                                            onClick={() => handleApprove(reclamation)}
                                        >
                                            Approuver
                                        </button>
                                        <button
                                            className="btn btn-danger"
                                            onClick={() => handleReject(reclamation)}
                                        >
                                            Rejeter
                                        </button>
                                    </td>
                                </tr>
                            ))}
                        </tbody>
                    </table>
                )}
            </div>
            <Address/>
        </div>
    );
};

export default Reclamations ;
