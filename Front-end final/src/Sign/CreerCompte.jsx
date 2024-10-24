import React, { useState } from 'react';
import gooleimg from '../assets/R.png';
import { useNavigate } from 'react-router-dom';
// Importation du fichier CSS

const CreerCompte = () => {
  const [name, setName] = useState('');
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');

  const handleSignUp = (e) => {
    e.preventDefault();
    // Logique d'inscription
  };
  const navigate = useNavigate();
  const VersCreer = () => {
    navigate('/Homef');
  }
  

  return (
    <div className="login-container d-flex align-items-center justify-content-center vh-100">
      <div className="login-card card p-4 w-sm-100 rounded-4">
        <h2 className="text-center"style={{fontFamily:'Imprint MT Shadow'}}>Creer un compte</h2>
        <form onSubmit={handleSignUp}>
          <div className="mb-3">
            <label htmlFor="name" className="form-label"style={{fontFamily:'Imprint MT Shadow'}}>Votre nom*</label>
            <input
              type="text"
              className="form-control rounded-5 "
              id="name"
              placeholder="Full name"
              value={name}
              onChange={(e) => setName(e.target.value)}
              required
            />
          </div>
          <div className="mb-3">
            <label htmlFor="email" className="form-label"style={{fontFamily:'Imprint MT Shadow'}}>Email*</label>
            <input
              type="email"
              className="form-control rounded-5 "
              id="email"
              placeholder="Work email"
              value={email}
              onChange={(e) => setEmail(e.target.value)}
              required
            />
          </div>
          <div className="mb-3">
            <label htmlFor="password" className="form-label "style={{fontFamily:'Imprint MT Shadow'}}>Mot de passe*</label>
            <input
              type="password"
              className="form-control rounded-5 "
              id="password"
              placeholder="Password"
              value={password}
              onChange={(e) => setPassword(e.target.value)}
              required
            />
          </div>
          <button type="submit" className="btn btn-block  rounded-5 w-100" style={{fontFamily:'Imprint MT Shadow',backgroundColor:'#CFBD97'}} onClick={VersCreer}>Se connecter</button>
        </form>
        <div className="google-signup text-center">
          {/* <button className="btn google-btn rounded-5 border-black w-100 "style={{fontFamily:'Imprint MT Shadow'}} >
            <img src={gooleimg} alt="Google icon" width={"30px"}/>
            Sign up with Google
          </button> */}
        </div>
      </div>
    </div>
  );
};

export default CreerCompte;
