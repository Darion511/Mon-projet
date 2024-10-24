import React, { useState } from 'react';
import { useNavigate } from 'react-router-dom';
import 'bootstrap/dist/css/bootstrap.min.css';

const Connexion = () => {
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const [errorMessage, setErrorMessage] = useState('');
  const navigate = useNavigate();

  const defaultClientCredentials = {
    email: 'client@example.com',
    password: 'client123',
  };

  // Déclare la fonction handleLogin comme asynchrone
  const handleLogin = async (e) => {
    e.preventDefault();
    // Logique de connexion
    const isValid = await authenticateUser(email, password); 
    if (isValid) {
      // Si l'authentification est réussie, rediriger vers la page d'administration ou client
    } else if (email === defaultClientCredentials.email && password === defaultClientCredentials.password) {
      // Rediriger vers la page client si les identifiants correspondent à ceux du client
      navigate('/HomeF'); 
    } else  {
      // Sinon, afficher un message d'erreur
      setErrorMessage('Email ou mot de passe incorrect.');
    }
  };

  // Fonction d'authentification
  const authenticateUser = async (email, password) => {
    try {
      const response = await fetch('https://example.com/api/login', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify({ email, password }),
      });

      const data = await response.json();
      if (response.ok) {
        // Stockez un jeton JWT ou une session ici
        return true;
      } else {
        return false;
      }
    } catch (error) {
      console.error('Erreur d\'authentification', error);
      return false;
    }
  };

  const VersSign = () => {
    navigate('/creer-compte');
  };
    
  return (
    <div className="login-container d-flex align-items-center justify-content-center vh-100">
      <div className="login-card card p-4 w-sm-100 rounded-4">
        <h2 className="text-center" style={{fontFamily: 'Imprint MT Shadow'}}>Connexion</h2>
        <form onSubmit={handleLogin}>
          <div className="mb-3">
            <label htmlFor="email" className="form-label" style={{fontFamily: 'Imprint MT Shadow'}}>Email</label>
            <input
              type="email"
              className="form-control rounded-5"
              id="email"
              placeholder="Entrez votre email"
              value={email}
              onChange={(e) => setEmail(e.target.value)}
              required
            />
          </div>
          <div className="mb-3">
            <label htmlFor="password" className="form-label" style={{fontFamily: 'Imprint MT Shadow'}}>Mot de passe</label>
            <input
              type="password"
              className="form-control rounded-5"
              id="password"
              placeholder="Entrez votre mot de passe"
              value={password}
              onChange={(e) => setPassword(e.target.value)}
              required
            />
          </div>
          <div className="text-end">
            <a href="#" className="forgot-password" style={{fontFamily: 'Imprint MT Shadow'}}>Mot de passe oublié?</a>
          </div>
          {errorMessage && <p className="text-danger">{errorMessage}</p>}
          <button type="submit" className="btn btn-block rounded-5 w-100" style={{fontFamily: 'Imprint MT Shadow', backgroundColor: '#CFBD97'}}>
            Se connecter
          </button>
        </form>
        <div className="text-center mt-3" style={{fontFamily: 'Imprint MT Shadow'}}>
          <span>Vous n'avez pas de compte ? </span>
          <a href="#" onClick={VersSign}>Créer un compte</a>
        </div>
      </div>
    </div>
  );
};

export default Connexion;
