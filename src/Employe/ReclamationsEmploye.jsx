import React, { useEffect, useState } from 'react';
import 'bootstrap/dist/css/bootstrap.min.css';
import { Modal, Button } from 'react-bootstrap';
import NavEmploye from './NavEmploye';
import Address from '../Panier_Etudiant/Address';

const ReclamationsEmploye = () => {
    const [reclamations, setReclamations] = useState([]);
    const [selectedReclamation, setSelectedReclamation] = useState(null);
    const [response, setResponse] = useState('');
    const [showModal, setShowModal] = useState(false);

    useEffect(() => {
        const savedReclamations = JSON.parse(localStorage.getItem('reclamations')) || [];
        setReclamations(savedReclamations);
    }, []);

    const handleOpenModal = (reclamation) => {
        setSelectedReclamation(reclamation);
        setResponse(''); // Réinitialiser la réponse à chaque fois qu'on ouvre le modal
        setShowModal(true);
    };

    const handleCloseModal = () => {
        setShowModal(false);
    };

    const handleSendResponse = () => {
        // Ajouter la réponse au localStorage avec statut non approuvé
        const updatedReclamations = reclamations.map((rec) =>
            rec.id === selectedReclamation.id
                ? { ...rec, reponse: response, approuve: false } // Par défaut, la réponse n'est pas approuvée
                : rec
        );
        setReclamations(updatedReclamations);
        localStorage.setItem('reclamations', JSON.stringify(updatedReclamations));

        // Fermer le modal après l'envoi
        setShowModal(false);
        alert('Votre réponse a été soumise et est en attente d\'approbation.');
    };

    return (
        <div className=''>
            <NavEmploye/>
            <div className="container my-5">
                
                <h2 className="imprint-text mb-4">Liste des Réclamations</h2>
                {reclamations.length === 0 ? (
                    <p>Aucune réclamation disponible.</p>
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
                                    <td>{reclamation.approuve ? reclamation.reponse : 'En attente de validation'}</td>
                                    <td>
                                        <Button variant="primary" onClick={() => handleOpenModal(reclamation)}>
                                            Répondre
                                        </Button>
                                    </td>
                                </tr>
                            ))}
                        </tbody>
                    </table>
                )}
            </div>

            {/* Modal pour la réponse */}
            <Modal show={showModal} onHide={handleCloseModal}>
                <Modal.Header closeButton>
                    <Modal.Title>Répondre à la réclamation</Modal.Title>
                </Modal.Header>
                <Modal.Body>
                    <textarea
                        className="form-control"
                        rows="4"
                        value={response}
                        onChange={(e) => setResponse(e.target.value)}
                        placeholder="Écrire une réponse..."
                    />
                </Modal.Body>
                <Modal.Footer>
                    <Button variant="secondary" onClick={handleCloseModal}>
                        Annuler
                    </Button>
                    <Button variant="primary" onClick={handleSendResponse}>
                        Envoyer
                    </Button>
                </Modal.Footer>
            </Modal>
            <Address/>
        </div>
    );
};

export default ReclamationsEmploye;


