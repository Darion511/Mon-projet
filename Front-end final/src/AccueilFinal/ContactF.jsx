import React, { useState } from 'react';
import 'bootstrap/dist/css/bootstrap.min.css';
import NavigatorF from './NavigatorF';
import Address from '../Panier_Etudiant/Address';

const ContactF = () => {
    const [nom, setNom] = useState('');
    const [prenom, setPrenom] = useState('');
    const [commentaire, setCommentaire] = useState('');

    const handleSubmit = (e) => {
        e.preventDefault();

        // Récupérer les messages existants ou initialiser un tableau vide
        const existingMessages = JSON.parse(localStorage.getItem('messages')) || [];
        const newMessage = {
            id: existingMessages.length + 1,
            nom,
            prenom,
            commentaire,
            approuve: false // Par défaut, non approuvé
        };

        // Ajouter le nouveau message aux messages existants
        const updatedMessages = [...existingMessages, newMessage];
        localStorage.setItem('messages', JSON.stringify(updatedMessages));

        // Réinitialiser le formulaire
        setNom('');
        setPrenom('');
        setCommentaire('');

        alert('Votre message a été soumis et est en attente d\'approbation.');
    };

    return (
        <div>
            <NavigatorF />
            <div className="container d-flex align-items-center justify-content-center vh-100">
                <div className="row align-items-center border py-3 px-3 rounded-5"style={{backgroundColor:'white'}}>
                    <div className="col-md-8">
                        <h2 className="imprint-text "style={{fontFamily:'Imprint MT Shadow'}}>Espace Commentaires</h2>
                        <p className="imprint-text "style={{fontFamily:'Imprint MT Shadow'}}>Parce que nous sommes là pour vous servir</p>
                        <form onSubmit={handleSubmit}>
                            <div className="mb-3">
                                <input
                                    type="text"
                                    className="form-control mb-3"
                                    placeholder="Votre nom"
                                    value={nom}
                                    onChange={(e) => setNom(e.target.value)}
                                    required
                                />
                                <input
                                    type="text"
                                    className="form-control mb-3"
                                    placeholder="Votre prénom"
                                    value={prenom}
                                    onChange={(e) => setPrenom(e.target.value)}
                                    required
                                />
                                <textarea
                                    className="form-control mb-3"
                                    placeholder="Votre commentaire"
                                    value={commentaire}
                                    onChange={(e) => setCommentaire(e.target.value)}
                                    required
                                />
                            </div>
                            <button type="submit" className="btn rounded-5 mt-3 mx-4"style={{fontFamily:'Imprint MT Shadow',backgroundColor:'#CFBD97'}}>Envoyer</button>
                        </form>
                    </div>
                </div>
            </div>
            <Address />
        </div>
    );
};

export default ContactF;