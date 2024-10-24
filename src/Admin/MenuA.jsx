import React, { useState, useContext } from 'react';
import 'bootstrap/dist/css/bootstrap.min.css';
import NavigaAdmin from './NavigaAdmin';
import { Tab, Nav, Modal, Button } from 'react-bootstrap';
import { ProductContext } from './ProductContext';
import Address from '../Panier_Etudiant/Address';

const MenuA = () => {
  const { produits, addProduct, updateProduct, deleteProduct } = useContext(ProductContext); // Utilisation du contexte
  const [newProduct, setNewProduct] = useState({
    title: '',
    description: '',
    imgSrc: '',
  });

  const [showModal, setShowModal] = useState(false);
  const [currentProduct, setCurrentProduct] = useState({});

  const handleInputChange = (e) => {
    setNewProduct({
      ...newProduct,
      [e.target.name]: e.target.value,
    });
  };

  const handleAddProduct = () => {
    addProduct(newProduct); // Ajoute le produit via le contexte
    setNewProduct({ title: '', description: '', imgSrc: '' });
  };

  const handleShowModal = (prod) => {
    setCurrentProduct(prod);
    setShowModal(true);
  };

  const handleModalInputChange = (e) => {
    const { name, value } = e.target;
    setCurrentProduct({ ...currentProduct, [name]: value });
  };

  const handleUpdateProduct = () => {
    updateProduct(currentProduct); // Met à jour le produit via le contexte
    setShowModal(false);
  };

  const handleDeleteProduct = (prodId) => {
    deleteProduct(prodId); // Supprime le produit via le contexte
  };

  return (
    <div className="container ">
      <NavigaAdmin />
      <div className="my-5">
        <h2 className="imprint-text text-white"style={{fontFamily:'Imprint MT Shadow'}}>Menu</h2>
      </div>

      <Tab.Container defaultActiveKey="ajouter">
        <Nav variant="tabs">
          <Nav.Item className="px-1">
            <Nav.Link eventKey="ajouter" className="px-0"style={{fontFamily:'Imprint MT Shadow'}}>Ajouter un produit</Nav.Link>
          </Nav.Item>
          <Nav.Item className="px-1">
            <Nav.Link eventKey="produits" className="px-0"style={{fontFamily:'Imprint MT Shadow'}}>Nos produits</Nav.Link>
          </Nav.Item>
        </Nav>

        <Tab.Content>
          <Tab.Pane eventKey="ajouter">
            <div className="my-4 px-0">
              <h3 className="imprint-text px-0 text-white "style={{fontFamily:'Imprint MT Shadow'}}>Ajouter un produit</h3>
              <div className="my-3">
                <input
                  type="text"
                  className="form-control mb-3"
                  placeholder="Titre"
                  name="title"
                  value={newProduct.title}
                  onChange={handleInputChange}
                />
                <textarea
                  className="form-control"
                  placeholder="Votre description"
                  style={{ height: '150px' }}
                  name="description"
                  value={newProduct.description}
                  onChange={handleInputChange}
                />
                <input
                  type="file"
                  className="form-control mt-3"
                  name="imgSrc"
                  onChange={(e) => setNewProduct({ ...newProduct, imgSrc: URL.createObjectURL(e.target.files[0]) })}
                />
              </div>
              <button className="btn rounded-5 " onClick={handleAddProduct} style={{fontFamily:'Imprint MT Shadow',backgroundColor:'#CFBD97'}}>
                Ajouter
              </button>
            </div>
          </Tab.Pane>

          <Tab.Pane eventKey="produits">
            <div className="my-5">
              <h3 className="mb-4 imprint-text px-0 text-white"style={{fontFamily:'Imprint MT Shadow'}}>Nos produits</h3>
              <div className="row px-0">
                {produits.map((prod) => (
                  <div key={prod.id} className="col-md-6 col-lg-4 mb-4">
                    <div className="card h-100 text-center">
                      <img
                        src={prod.imgSrc}
                        className="card-img-top my-2"
                        alt={prod.title}
                      />
                      <div className="card-body">
                        <h5 className="card-title imprint-text">{prod.title}</h5>
                        <p className="card-text imprint-text">{prod.description}</p>
                        <button className="btn btn-warning rounded-5" onClick={() => handleShowModal(prod)}>
                          Modifier
                        </button>
                        <button className="btn btn-danger mx-2 rounded-5" onClick={() => handleDeleteProduct(prod.id)}>
                          Supprimer
                        </button>
                      </div>
                    </div>
                  </div>
                ))}
              </div>
            </div>
          </Tab.Pane>
        </Tab.Content>
      </Tab.Container>

      {/* Modal pour modifier le produit */}
      <Modal show={showModal} onHide={() => setShowModal(false)}>
        <Modal.Header closeButton>
          <Modal.Title>Modifier le produit</Modal.Title>
        </Modal.Header>
        <Modal.Body>
          <form>
            <div className="mb-3">
              <label htmlFor="title" className="form-label"style={{fontFamily:'Imprint MT Shadow'}}>Titre</label>
              <input
                type="text"
                className="form-control"
                id="title"
                name="title"
                value={currentProduct.title || ''}
                onChange={handleModalInputChange}
              />
            </div>
            <div className="mb-3">
              <label htmlFor="description" className="form-label "style={{fontFamily:'Imprint MT Shadow'}}>Description</label>
              <textarea
                className="form-control"
                id="description"
                name="description"
                value={currentProduct.description || ''}
                onChange={handleModalInputChange}
              />
            </div>
            <div className="mb-3">
              <label htmlFor="image" className="form-label"style={{fontFamily:'Imprint MT Shadow'}}>Image</label>
              <input
                type="file"
                className="form-control"
                onChange={(e) => setCurrentProduct({ ...currentProduct, imgSrc: URL.createObjectURL(e.target.files[0]) })}
              />
            </div>
          </form>
        </Modal.Body>
        <Modal.Footer>
          <Button variant="secondary rounded-5" style={{fontFamily:'Imprint MT Shadow'}} onClick={() => setShowModal(false)}>
            Fermer
          </Button>
          <Button variant=" rounded-5" onClick={handleUpdateProduct}style={{fontFamily:'Imprint MT Shadow',backgroundColor:'#CFBD97'}}>
            Enregistrer les modifications
          </Button>
        </Modal.Footer>
      </Modal>

      < Address  />
    </div>
  );
};

export default MenuA;
