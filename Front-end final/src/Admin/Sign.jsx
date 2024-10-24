import React from 'react';
import  { useState } from 'react';
import 'bootstrap/dist/css/bootstrap.min.css';
import { useNavigate } from 'react-router-dom';
import zeducimg from '../assets/logo (2).png';



const Signadmin = () => {
    const [role, setRole] = useState(''); // État pour gérer le rôle sélectionné
    const navigate = useNavigate(); // Hook pour naviguer

    const handleRoleChange = (event) => {
        setRole(event.target.value);
    };

    const handleLogin = () => {
        // Redirection vers la page appropriée en fonction du rôle
        if (role === 'gerant') {
            navigate('/accueilG'); // Utilisation de navigate pour la redirection
        } else if (role === 'employe') {
            navigate('/accueilE');
        } else if (role === 'administrateur') {
            navigate('/accueil');
        }
    };

    return (
        <div className="login-container d-flex align-items-center justify-content-center vh-100">
            <div className="login-card card p-4">
                {/* Première div : Image */}
                <div className="text-center mb-4">
                    <img 
                        src={zeducimg } 
                        alt="Logo" 
                        className="login-logo bg-black rounded-5"
                    />
                </div>

                {/* Deuxième div : Champs de formulaire */}
                <div>
                    <p>Se connecter en tant que qui? </p>
                    <select
                        className="form-select my-3"
                        onChange={handleRoleChange}
                    >
                        <option value="">Choisissez un rôle</option>
                        <option value="gerant">Gérant</option>
                        <option value="employe">Employé</option>
                        <option value="administrateur">Administrateur</option>
                    </select>
                </div>
                
                {/* Champs de formulaire pour l'email et le mot de passe */}
                <div className="mb-3">
                    <input 
                        type="email" 
                        className="form-control mb-3" 
                        placeholder="Email" 
                    />
                    <input 
                        type="password" 
                        className="form-control" 
                        placeholder="Mot de passe" 
                    />
                </div>

                {/* Bouton de connexion */}
                <div className='my-2'>
                    <button 
                        className="btn w-100 rounded-5" style={{fontFamily:'Imprint MT Shadow',backgroundColor:'#CFBD97'}}
                        onClick={handleLogin}
                        disabled={!role} // Désactiver le bouton si aucun rôle n'est sélectionné
                    >
                        Se connecter
                    </button>
                </div>

            </div>
        </div>
    );
};

export default Signadmin;