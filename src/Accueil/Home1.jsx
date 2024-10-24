import React, { useContext } from 'react';
import { useNavigate } from 'react-router-dom';
import 'bootstrap/dist/css/bootstrap.min.css';
import { PromotionsContext } from '../Admin/PromotionContext'; // Import du contexte
import backButtonImage from '../assets/contour-du-bouton-circulaire-fleche-arriere-gauche.png';

const Home1 = () => {
  const { promotions } = useContext(PromotionsContext); // Utilisation du contexte
  const navigate = useNavigate();

    const VersEven = () => {
        navigate('/final');
    }
  return (
    <div className="container my-5">
      <div className="row">
        {/* Utiliser slice pour n'afficher que les trois premières promotions */}
        {promotions.slice(0, 3).map((promo, index) => (
          <div key={index} className="col-md-12 mb-4">
            <div className="card">
              <div className="card-body d-flex"style={{fontFamily:'Imprint MT Shadow',backgroundColor:'#CFBD97'}}>
                <div className="position-absolute" style={{ top: '10px', left: '10px' }}>
                  <span className="badge bg-secondary">{promo.date}</span>
                </div>
                <div className="flex-shrink-0">
                  <img src={promo.imgSrc} alt={promo.title} className="img-fluid me-3" style={{ width: '100px', height: '100px' }} />
                </div>
                <div>
                  <h5 className="card-title imprint-text">{promo.title}</h5>
                  <p className="card-text imprint-text">{promo.description}</p>
                  <a href={promo.link} className="card-link imprint-text">Read more</a>
                </div>
              </div>
            </div>
          </div>
        ))}
      </div>

      <div className="text-center mt-4">
          <button  type="button"className="btn btn-secondary ">
            <img src={backButtonImage} alt="Retour" style={{ width: '20px', height: '20px', marginRight: '5px' }}  onclick={VersEven} />
          </button>
      </div>
    </div>
  );
  <div className="d-flex justify-content-end " >
  <button  type="button" className="btn btn-light rounded-4 " style={{fontFamily:'Imprint MT Shadow',backgroundColor:'#CFBD97'}}onClick={Verslogin}>Connexion</button>
</div>
};

export default Home1;
