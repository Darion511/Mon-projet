import { useNavigate } from 'react-router-dom';
import zeducimg from '../assets/logo (2).png';



function NavigatorA(){

    const navigate = useNavigate();

    const VersAccueil = () => {
        navigate('/');
    }
    const VersContact = () => {
        navigate('/contact');
    }
    const Verslogin = () => {
        navigate('/connexion');
    }
    const VersAd = () => {
        navigate('/sign');
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
                        <ul className="navbar-nav">
                            <li className="nav-item">
                                <a className="nav-link " aria-current="page"   href="#" style={{fontFamily:'Imprint MT Shadow'}} onClick={VersAccueil}>Accueil</a>
                            </li>
                            <li className="nav-item">
                                <a className="nav-link" href="#"style={{fontFamily:'Imprint MT Shadow'}} >Menu</a>
                            </li>
                            <li className="nav-item">
                                <a className="nav-link" href="#"style={{fontFamily:'Imprint MT Shadow'}} onClick={VersContact}>Contact</a>
                            </li>
                        </ul> 
                    </div>
                    <div className="d-flex justify-content-end " >
                        <button  type="button" className="btn btn-light rounded-4 " style={{fontFamily:'Imprint MT Shadow',backgroundColor:'#CFBD97'}}onClick={Verslogin}>Connexion</button>
                    </div>
                    <div className="d-flex justify-content-end " >
                        <button  type="button" className="btn btn-light rounded-4 " style={{fontFamily:'Imprint MT Shadow',backgroundColor:'#CFBD97'}}onClick={VersAd}>Admin</button>
                    </div>
                </div>
            </nav>
        </>
    );
}

export default NavigatorA;