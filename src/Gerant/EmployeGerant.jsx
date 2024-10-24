import React, { useState, useEffect } from 'react';
import 'bootstrap/dist/css/bootstrap.min.css';
import { Modal, Button, Tab, Nav } from 'react-bootstrap';
import NavGerant from './NavGerant'
import Address from '../Panier_Etudiant/Address';

const EmployeGerant = () => {
    const [employes, setEmployes] = useState([]);
    const [newEmploye, setNewEmploye] = useState({ nom: '', prenom: '', role: '' });
    const [editingEmploye, setEditingEmploye] = useState(null);
    const [showModal, setShowModal] = useState(false);

    useEffect(() => {
        const savedEmployes = JSON.parse(localStorage.getItem('employes')) || [];
        setEmployes(savedEmployes);
    }, []);

    const handleChange = (e) => {
        const { name, value } = e.target;
        setNewEmploye({ ...newEmploye, [name]: value });
    };

    const handleAddEmploye = () => {
        if (!newEmploye.nom || !newEmploye.prenom || !newEmploye.role) {
            alert('Veuillez remplir tous les champs.');
            return;
        }

        const updatedEmployes = [...employes, { id: Date.now(), ...newEmploye }];
        setEmployes(updatedEmployes);
        localStorage.setItem('employes', JSON.stringify(updatedEmployes));
        setNewEmploye({ nom: '', prenom: '', role: '' });
    };

    const handleDeleteEmploye = (id) => {
        const updatedEmployes = employes.filter((emp) => emp.id !== id);
        setEmployes(updatedEmployes);
        localStorage.setItem('employes', JSON.stringify(updatedEmployes));
    };

    const handleOpenModal = (employe) => {
        setEditingEmploye(employe);
        setNewEmploye(employe);
        setShowModal(true);
    };

    const handleCloseModal = () => {
        setShowModal(false);
        setNewEmploye({ nom: '', prenom: '', role: '' });
    };

    const handleUpdateEmploye = () => {
        const updatedEmployes = employes.map((emp) =>
            emp.id === editingEmploye.id ? { ...emp, ...newEmploye } : emp
        );
        setEmployes(updatedEmployes);
        localStorage.setItem('employes', JSON.stringify(updatedEmployes));
        setShowModal(false);
        setNewEmploye({ nom: '', prenom: '', role: '' });
        setEditingEmploye(null);
    };

    return (
        <div className="container  ">
            <NavGerant/>
            <h1 className="imprint-text text-white my-5"style={{fontFamily:'Imprint MT Shadow'}} >Gestion des Employés</h1>
            <Tab.Container defaultActiveKey="add">
                <Nav variant="tabs my-5">
                    <Nav.Item>
                        <Nav.Link eventKey="add"style={{fontFamily:'Imprint MT Shadow'}} >Ajouter un employé</Nav.Link>
                    </Nav.Item>
                    <Nav.Item>
                        <Nav.Link eventKey="list"style={{fontFamily:'Imprint MT Shadow'}} >Liste des employés</Nav.Link>
                    </Nav.Item>
                </Nav>

                <Tab.Content className="mt-4 ">
                    {/* Section Ajouter un employé */}
                    <Tab.Pane eventKey="add">
                       <div className='text-white my-5'>
                       <h4 style={{fontFamily:'Imprint MT Shadow'}} >Ajouter un employé</h4>
                       </div>
                        <div className="my-5">
                            <input
                                type="text"
                                className="form-control mb-2"
                                placeholder="Nom"
                                name="nom"
                                value={newEmploye.nom}
                                onChange={handleChange}
                            />
                            <input
                                type="text"
                                className="form-control mb-2"
                                placeholder="Prénom"
                                name="prenom"
                                value={newEmploye.prenom}
                                onChange={handleChange}
                            />
                            <input
                                type="text"
                                className="form-control mb-2"
                                placeholder="Rôle"
                                name="role"
                                value={newEmploye.role}
                                onChange={handleChange}
                            />
                            <Button variant="primary" onClick={handleAddEmploye}>
                                Ajouter
                            </Button>
                        </div>
                    </Tab.Pane>

                    {/* Section Liste des employés */}
                    <Tab.Pane eventKey="list">
                        <h4>Liste des employés</h4>
                        {employes.length === 0 ? (
                            <p>Aucun employé enregistré.</p>
                        ) : (
                            <table className="table table-bordered">
                                <thead>
                                    <tr>
                                        <th>Nom</th>
                                        <th>Prénom</th>
                                        <th>Rôle</th>
                                        <th>Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    {employes.map((employe) => (
                                        <tr key={employe.id}>
                                            <td>{employe.nom}</td>
                                            <td>{employe.prenom}</td>
                                            <td>{employe.role}</td>
                                            <td>
                                                <Button
                                                    variant="warning"
                                                    className="me-2 rounded-5"
                                                    onClick={() => handleOpenModal(employe)}
                                                >
                                                    Modifier
                                                </Button>
                                                <Button
                                                    variant="danger rounded-5"
                                                    onClick={() => handleDeleteEmploye(employe.id)}
                                                >
                                                    Supprimer
                                                </Button>
                                            </td>
                                        </tr>
                                    ))}
                                </tbody>
                            </table>
                        )}
                    </Tab.Pane>
                </Tab.Content>
            </Tab.Container>

            {/* Modal pour la modification d'un employé */}
            <Modal show={showModal} onHide={handleCloseModal}>
                <Modal.Header closeButton>
                    <Modal.Title>Modifier un employé</Modal.Title>
                </Modal.Header>
                <Modal.Body>
                    <input
                        type="text"
                        className="form-control mb-2"
                        placeholder="Nom"
                        name="nom"
                        value={newEmploye.nom}
                        onChange={handleChange}
                    />
                    <input
                        type="text"
                        className="form-control mb-2"
                        placeholder="Prénom"
                        name="prenom"
                        value={newEmploye.prenom}
                        onChange={handleChange}
                    />
                    <input
                        type="text"
                        className="form-control mb-2"
                        placeholder="Rôle"
                        name="role"
                        value={newEmploye.role}
                        onChange={handleChange}
                    />
                </Modal.Body>
                <Modal.Footer>
                    <Button variant="secondary rounded-5" onClick={handleCloseModal}style={{fontFamily:'Imprint MT Shadow'}}>
                        Annuler
                    </Button>
                    <Button variant=" btn rounded-5"  style={{fontFamily:'Imprint MT Shadow',backgroundColor:'#CFBD97'}}onClick={handleUpdateEmploye}>
                        Enregistrer les modifications
                    </Button>
                </Modal.Footer>
            </Modal>
            <Address/>
        </div>
    );
};

export default EmployeGerant;
