import zeducimg from '../assets/logo (2).png';


function NavigatorC(){
    return (
        <>
           <nav className="navbar navbar-expand-sm navbar-dark">
                <div className="container-fluid">

                    <a className="navbar-brand" href="#">
                        <img src={zeducimg} alt="zeducimg"  width = {"100%"}/>
                    </a>
                    <button className="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                     <span className="navbar-toggler-icon"></span>
                    </button>
                    <div className="collapse navbar-collapse d-sm-flex justify-content-center" id="navbarNav">
                        <ul className="navbar-nav">
                            <li className="nav-item">
                                <a className="nav-link " href="#" style={{fontFamily:'Imprint MT Shadow'}}>Accueil</a>
                            </li>
                            <li className="nav-item">
                                <a className="nav-link" href="#"style={{fontFamily:'Imprint MT Shadow'}} >Menu</a>
                            </li>
                            <li className="nav-item">
                                <a className="nav-link"  aria-current="page" href="#"style={{fontFamily:'Imprint MT Shadow'}}>Contact</a>
                            </li>
                        </ul> 
                    </div>
                    <div className="d-flex justify-content-end" >
                        <button  type="button" className="btn btn-light rounded-4 " style={{fontFamily:'Imprint MT Shadow',backgroundColor:'#CFBD97'}}>login</button>
                    </div>
                </div>
            </nav>
        </>
    );
}

export default NavigatorC;