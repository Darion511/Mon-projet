import React from 'react';
import 'bootstrap/dist/css/bootstrap.min.css';
import NavigaAdmin from './NavigaAdmin';
import Address from '../Panier_Etudiant/Address';
const Client = () => {


  return (
    <div className="container">
      <NavigaAdmin/>
       <div className="d-flex justify-content-between align-items-center my-4">
            <h1 className="imprint-text text-white"style={{fontFamily:'Imprint MT Shadow'}}>Vos clients</h1>
            <input 
                type="text" 
                className="form-control w-25" 
                placeholder="Rechercher..." 
            />
        </div> 

       <div className="row my-4">
                <div className="col-md-6 my-3">
                    <div className="card rounded-4 border-white"style={{fontFamily:'Imprint MT Shadow',backgroundColor:'black',color:"white"}}>
                        <div className="card-body ">
                            <h5 className="card-title imprint-text"style={{fontFamily:'Imprint MT Shadow'}}>hehehehhe</h5>
                            <hr />
                            <div className="d-flex justify-content-between">
                                <span className="imprint-text"style={{fontFamily:'Imprint MT Shadow'}}>hdhdh</span>
                                <span className="imprint-text"style={{fontFamily:'Imprint MT Shadow'}}>fsfsfs</span>
                            </div>
                        </div>
                    </div>
                </div>

                <div className="col-md-6 mt-3">
                    <div className="card rounded-4 border-white "style={{fontFamily:'Imprint MT Shadow',backgroundColor:'black',color:"white"}}>
                        <div className="card-body ">
                            <h5 className="card-title imprint-text"style={{fontFamily:'Imprint MT Shadow'}}>Tgshshshsss</h5>
                            <hr />
                            <div className="d-flex justify-content-between">
                                <span className="imprint-text"style={{fontFamily:'Imprint MT Shadow'}}>sbsbsb</span>
                                <span className="imprint-text"style={{fontFamily:'Imprint MT Shadow'}}>fsfsfsy</span>
                            </div>
                        </div>
                    </div>
                </div>
        </div>

        <table className=" table-bordered w-100">
            <thead>
                <tr>
                    <th scope="col"style={{fontFamily:'Imprint MT Shadow',backgroundColor:'black',color:"white"}}>Nom</th>
                    <th scope="col"style={{fontFamily:'Imprint MT Shadow',backgroundColor:'black',color:"white"}}>Nombre de Commandes</th>
                    <th scope="col"style={{fontFamily:'Imprint MT Shadow',backgroundColor:'black',color:"white"}}>Photo</th>
                    <th scope="col"style={{fontFamily:'Imprint MT Shadow',backgroundColor:'black',color:"white"}}>action</th>
                </tr>
            </thead>
            <tbody>
                {[...Array(10)].map((_, index) => (
                    <tr key={index}style={{fontFamily:'Imprint MT Shadow',backgroundColor:'black',color:'white'}}>
                        <td>Nom {index + 1}</td>
                        <td>{index + 1}</td>
                        <td><img src="" alt="Photo" /></td>
                        <td className=' d-flex justify-center space-between'style={{fontFamily:'Imprint MT Shadow',backgroundColor:'black',color:"white"}}>
                            <button className="btn border text-white mx-2 rounded-5">Supprimer</button>
                        </td>
                    </tr>
                ))}
            </tbody>
        </table>
        <Address/>
    </div>
  );
};

export default Client;
