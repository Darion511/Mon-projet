import zeducimg from '../assets/logo (2).png';
import { useNavigate } from 'react-router-dom';

function NavigaAdmin(){

    const navigate = useNavigate();

    const VersA = () => {
        navigate('/accueil');
    }
    const VersC = () => {
        navigate('/client');
    }
    const VersE = () => {
        navigate('/employe');
    }
    const VersP = () => {
        navigate('/promotion');
    }
    const VersM = () => {
        navigate('/menuA');
    }
    const VersL = () => {
        navigate('/');
    }

    return (
        <>
            <nav className="navbar navbar-expand-sm navbar-dark">
                <div className="container-fluid">
                    <a className="navbar-brand" href="#">
                        <img src={zeducimg} alt="zeducimg"  width = {"100px"}/>
                    </a> 
                    <button className="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span className="navbar-toggler-icon"></span>
                    </button>
                    <div className="collapse navbar-collapse d-sm-flex justify-content-center" id="navbarNav">
                        <ul className="navbar-nav ">
                            <li className="nav-item">
                             <a className="nav-link "  href="#"style={{fontFamily:'Imprint MT Shadow'}} onClick={VersA}>Accueil</a>
                            </li>
                            <li className="nav-item">
                             <a className="nav-link " href="#"style={{fontFamily:'Imprint MT Shadow'}} onClick={VersE}>Employe</a> 
                            </li>
                            <li className="nav-item">
                             <a className="nav-link" href="#"style={{fontFamily:'Imprint MT Shadow'}} onClick={VersC}>Client</a> 
                            </li>
                            <li className="nav-item">
                             <a className="nav-link " href="#"style={{fontFamily:'Imprint MT Shadow'}} >Parametre avancé</a> 
                            </li>
                            <li className="nav-item">
                             <a className="nav-link" href="#"style={{fontFamily:'Imprint MT Shadow'}} onClick={VersP}>Promotion</a> 
                            </li>
                            <li className="nav-item">
                             <a className="nav-link "href="#"style={{fontFamily:'Imprint MT Shadow'}} onClick={VersM}>Menu</a> 
                            </li>
                        </ul>
                    </div>
                    <div className="d-flex justify-content-end" >
                        <button  type="button" className="btn btn-light rounded-4 " style={{fontFamily:'Imprint MT Shadow',backgroundColor:'#CFBD97'}}onClick={VersL}>Deconnexion</button>
                    </div>

                </div>
            </nav>
        </>
       
    );
  };
  
export default NavigaAdmin;
  