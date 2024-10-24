import React, { useContext } from 'react';
import { PromotionsContext } from '../Admin/PromotionContext';

const Even= () => {
  const { promotions } = useContext(PromotionsContext);

  return (
    <div className="container-fluid my-5 ">
      <div className="row mb-4 ">
        {/* Ton code pour afficher les promotions ici */}
        {promotions.map((promo, index) => (
          <div key={index} className="col-md-6 mb-4 mx-5 ">
            <div className="card mx-5">
              <div className="card-body d-flex"style={{fontFamily:'Imprint MT Shadow',backgroundColor:'#CFBD97'}}>
                <div className="position-absolute" style={{ top: '10px', left: '10px' }}>
                  <span className="badge bg-secondary">{promo.date}</span>
                </div>
                <div className="flex-shrink-0">
                  <img src={promo.imgSrc} alt={promo.title} className="img-fluid me-3" />
                </div>
                <div>
                  <h5 className="card-title">{promo.title}</h5>
                  <p className="card-text">{promo.description}</p>
                  <a href={promo.link} className="card-link">Lire la suite</a>
                </div>
              </div>
            </div>
          </div>
        ))}
      </div>
    </div>
  );
};

export default Even;
  