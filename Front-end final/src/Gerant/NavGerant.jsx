import React from 'react';
import { useNavigate } from 'react-router-dom';
import 'bootstrap/dist/css/bootstrap.min.css';
import zeducimg from '../assets/logo (2).png';

const NavGerant = () => {

  const navigate = useNavigate();

  const VersAccueilG = () => {
      navigate('/accueilG');
  }
  const VersEg = () => {
      navigate('/employeG');
  }
  const VersG = () => {
    navigate('/reclamationE');
  }
  
  const VersDeco = () => {
      navigate('/');
  }
  const VersGR = () => {
    navigate('/commandeE');
  } 
  
 
  return (
    <nav className="navbar navbar-expand-sm navbar-dark">
      <div className="container-fluid">
        <a className="navbar-brand" href="#">
          <img src={zeducimg} alt="zeducimg"  width = {"100px"}/>
        </a>
        <button className="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span className="navbar-toggler-icon"></span>
        </button>
        <div className="collapse navbar-collapse d-sm-flex justify-content-center" id="navbarNav">
          <ul className="navbar-nav">
            <li className="nav-item">
              <a a className="nav-link" href="#"style={{fontFamily:'Imprint MT Shadow'}} onClick={VersAccueilG}>Accueil</a> 
            </li>
            <li className="nav-item">
              <a className="nav-link" href="#"style={{fontFamily:'Imprint MT Shadow'}}onClick={VersGR}>Commande</a> 
            </li>
            <li className="nav-item">
              <a a className="nav-link" href="#"style={{fontFamily:'Imprint MT Shadow'}} onClick={VersEg}>Employe</a> 
            </li>
            <li className="nav-item">
              <a a className="nav-link" href="#"style={{fontFamily:'Imprint MT Shadow'}} onClick={ VersG}>Reclamations</a> 
            </li>
          </ul>
        </div>
        <div className="d-flex justify-content-end" >
          <button  type="button" className="btn btn-light rounded-4 " style={{fontFamily:'Imprint MT Shadow',backgroundColor:'#CFBD97'}}onClick={VersDeco}>Deconnexion</button>
         </div>
      </div>
      
    </nav>
  );
};

export default NavGerant;