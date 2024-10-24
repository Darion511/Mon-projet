import React, { useContext, useState } from 'react';
import 'bootstrap/dist/css/bootstrap.min.css';
import NavigaAdmin from './NavigaAdmin';
import { PromotionsContext } from './PromotionContext';
import { FaEdit, FaTrash } from 'react-icons/fa';
import { Modal } from 'react-bootstrap'; // Importation du composant Modal
import Address from '../Panier_Etudiant/Address';

const Promotion = () => {
  const { promotions, addPromotion, updatePromotion, deletePromotion } = useContext(PromotionsContext);
  const [activeTab, setActiveTab] = useState('add');
  const [newPromo, setNewPromo] = useState({ date: '', imgSrc: '', title: '', description: '', link: '' });
  const [showModal, setShowModal] = useState(false); // État pour afficher le modal
  const [editIndex, setEditIndex] = useState(null); // Indice de la promotion à modifier

  const handleAddPromotion = () => {
    addPromotion(newPromo);
    setNewPromo({ date: '', imgSrc: '', title: '', description: '', link: '' });
  };

  const handleUpdatePromotion = () => {
    updatePromotion(editIndex, newPromo); // Met à jour la promotion
    setShowModal(false); // Ferme le modal
    setNewPromo({ date: '', imgSrc: '', title: '', description: '', link: '' }); // Réinitialiser le formulaire
    setEditIndex(null); // Réinitialiser l'indice
  };

  const handleDeletePromotion = (index) => {
    deletePromotion(index);
  };

  const handleImageChange = (event) => {
    const file = event.target.files[0];
    if (file) {
      const reader = new FileReader();
      reader.onloadend = () => {
        setNewPromo({ ...newPromo, imgSrc: reader.result }); // Met à jour l'état avec l'image
      };
      reader.readAsDataURL(file);
    }
  };

  const openModalForEdit = (index) => {
    setNewPromo(promotions[index]); // Charge la promotion dans le formulaire
    setEditIndex(index); // Définit l'indice de la promotion à modifier
    setShowModal(true); // Ouvre le modal
  };

  const renderPromotions = () => (
    <div className="container ">
      <div className="row mb-4">
        <div className="col d-flex justify-content-between align-items-center my-4">
          <div className="d-flex align-items-center">
            <a className="btn btn-secondary">
              <img src={'/path/to/backButtonImage'} alt="Retour" style={{ width: '20px', height: '20px', marginRight: '5px' }} />
            </a>
            <h2 className="imprint-text text-white">Promotions</h2>
          </div>
          <div>
            <input type="text" className="form-control" placeholder="Recherche..." style={{ width: '200px', display: 'inline-block' }} />
          </div>
        </div>
      </div>

      <div className="row">
        {promotions.map((promo, index) => (
          <div key={index} className="col-md-12 mb-4">
            <div className="card">
              <div className="card-body d-flex" style={{backgroundColor:'#CFBD97'}}>
                <div className="position-absolute" style={{ top: '10px', left: '10px' }}>
                  <span className="badge bg-secondary">{promo.date}</span>
                </div>

                <div className="flex-shrink-0">
                  <img src={promo.imgSrc} alt={promo.title} className="img-fluid me-3" style={{ width: '100px', height: '100px' }} />
                </div>

                <div>
                  <h5 className="card-title">{promo.title}</h5>
                  <p className="card-text">{promo.description}</p>
                  <a href={promo.link} className="card-link">Lire la suite</a>
                  <div className="d-inline-flex ml-9">
                    <button className="btn btn-outline-secondary btn-sm me-1" onClick={() => openModalForEdit(index)}>
                      <FaEdit />
                    </button>
                    <button className="btn btn-outline-danger btn-sm" onClick={() => handleDeletePromotion(index)}>
                      <FaTrash />
                    </button>
                  </div>
                </div>
              </div>
            </div>
          </div>
        ))}
      </div>

      {/* Modal pour modifier la promotion */}
      <Modal show={showModal} onHide={() => setShowModal(false)}>
        <Modal.Header closeButton>
          <Modal.Title>Modifier la Promotion</Modal.Title>
        </Modal.Header>
        <Modal.Body>
          <input
            type="text"
            className="form-control mb-3"
            placeholder="Titre"
            value={newPromo.title}
            onChange={(e) => setNewPromo({ ...newPromo, title: e.target.value })}
          />
          <textarea
            className="form-control mb-3"
            placeholder="Votre description"
            style={{ height: '150px' }}
            value={newPromo.description}
            onChange={(e) => setNewPromo({ ...newPromo, description: e.target.value })}
          />
          <input
            type="date"
            className="form-control mb-3"
            value={newPromo.date}
            onChange={(e) => setNewPromo({ ...newPromo, date: e.target.value })}
          />
          <input
            type="file"
            className="form-control mb-3"
            accept="image/*"
            onChange={handleImageChange}
          />
          {newPromo.imgSrc && (
            <img src={newPromo.imgSrc} alt="Aperçu" className="img-fluid mb-3" style={{ width: '100px', height: '100px' }} />
          )}
        </Modal.Body>
        <Modal.Footer>
          <button className="btn btn-secondary" onClick={() => setShowModal(false)}>
            Fermer
          </button>
          <button className="btn btn-primary" onClick={handleUpdatePromotion}>
            Mettre à jour
          </button>
        </Modal.Footer>
      </Modal>
    </div>
  );

  const renderAddPromotionForm = () => (
    <div className="container my-5">
        <div className='text-white'style={{fontFamily:'Imprint MT Shadow'}}>
          <h3>Ajouter une Promotion</h3>
        </div>
      <input
        type="text"
        className="form-control mb-3  "
        placeholder="Titre"
        value={newPromo.title}
        onChange={(e) => setNewPromo({ ...newPromo, title: e.target.value })}
      />
      <textarea
        className="form-control mb-3"
        placeholder="Votre description"
        style={{ height: '150px' }}
        value={newPromo.description}
        onChange={(e) => setNewPromo({ ...newPromo, description: e.target.value })}
      />
      <input
        type="date"
        className="form-control mb-3"
        value={newPromo.date}
        onChange={(e) => setNewPromo({ ...newPromo, date: e.target.value })}
      />
      <input
        type="file"
        className="form-control mb-3"
        accept="image/*"
        onChange={handleImageChange}
      />
      {newPromo.imgSrc && (
        <img src={newPromo.imgSrc} alt="Aperçu" className="img-fluid mb-3" style={{ width: '100px', height: '100px' }} />
      )}
      <div className="text-center">
        <button className="btn rounded-5" onClick={handleAddPromotion} style={{fontFamily:'Imprint MT Shadow',backgroundColor:'#CFBD97'}} >
          Ajouter Promotion
        </button>
      </div>
    </div>
  );

  return (
    <div className='container'>
      <NavigaAdmin />
      <div className='text-white my-4'>
      <h1 style={{fontFamily:'Imprint MT Shadow'}} >Gestion des Promotions</h1>
      </div>
      <ul className="nav nav-tabs">
        <li className="nav-item">
          <button className={`nav-link ${activeTab === 'add' ? 'active' : ''}`} onClick={() => setActiveTab('add')}style={{fontFamily:'Imprint MT Shadow'}} >
            Ajouter
          </button>
        </li>
        <li className="nav-item">
          <button className={`nav-link ${activeTab === 'manage' ? 'active' : ''}`} onClick={() => setActiveTab('manage')}style={{fontFamily:'Imprint MT Shadow'}} >
            Gérer
          </button>
        </li>
      </ul>

      {activeTab === 'add' ? renderAddPromotionForm() : renderPromotions()}
      <Address/>
    </div>
  );
};

export default Promotion;
