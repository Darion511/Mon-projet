import { useNavigate } from 'react-router-dom';
import zeducimg from '../assets/logo (2).png';
import { FaShoppingCart } from 'react-icons/fa';


function NavigatorF(){

    const navigate = useNavigate();

    const VersAccueilF = () => {
        navigate('/HomeF');
    }
    const VersMenu = () => {
        navigate('/menu');
    }
    const VersPanier = () => {
        navigate('/panier');
    }
    const VersEven = () => {
        navigate('/final');
    }
    const VersDeco = () => {
        navigate('/');
    } 
    const VersParrains = () => {
        navigate('/parrains');
    }
    const VersCt = () => {
        navigate('/contactf');
    }

    const goToCart = () => {
        navigate('/panier'); // Rediriger vers la page du panier
    };
    const VersH = () => {
        navigate('/histof');
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
                                <a className="nav-link " aria-current="page"  href="#" style={{fontFamily:'Imprint MT Shadow'}} onClick={VersAccueilF}>Accueil</a>
                            </li>
                            <li className="nav-item">
                                <a className="nav-link" href="#"style={{fontFamily:'Imprint MT Shadow'}} onClick={VersMenu}>Menu</a>
                            </li>
                            <li className="nav-item">
                                <a className="nav-link" href="#"style={{fontFamily:'Imprint MT Shadow'}} onClick={VersEven}>Evenement</a>
                            </li>
                            <li className="nav-item">
                                <a className="nav-link" href="#"style={{fontFamily:'Imprint MT Shadow'}} onClick={VersParrains}>Parrainage</a>
                            </li>
                            <li className="nav-item">
                                <a className="nav-link" href="#"style={{fontFamily:'Imprint MT Shadow'}} onClick={VersCt}>Contact</a>
                            </li>
                            <li>
                                <a className="nav-link"href="#"style={{fontFamily:'Imprint MT Shadow'}} onClick={VersH}>Voir Historique</a>
                            </li>
                            <div className=" mx-5 ">
                                <button onClick={goToCart} className="btn btn-dark d-flex align-items-center rounded-5 bg-black">
                                    <FaShoppingCart size={20} style={{ marginRight: '8px' }} />
                                </button>   
                            </div>
                            
                        </ul> 
                    </div>
                    
            
                    <div className="d-flex justify-content-end" >
                        <button  type="button" className="btn btn-light rounded-4 " style={{fontFamily:'Imprint MT Shadow',backgroundColor:'#CFBD97'}}onClick={VersDeco}>Deconnexion</button>
                    </div>
                </div>
            </nav>
        </>
    );
}

export default NavigatorF;