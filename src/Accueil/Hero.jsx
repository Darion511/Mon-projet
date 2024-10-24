import platimg from '../assets/pexels-huzaifabukhari-16845755-removebg-preview 1.png';
import tomimg from '../assets/fjfjf-removebg-preview 2.png';
import fruitimg from '../assets/fjfjf-removebg-preview 1.png';

const Hero = () => {
    return (
        <div className="row"style={{marginLeft:'20%'}}>
            <div className="col-9 me-5 mt-3">
                <div className="container d-flex flex-column justify-content-center align-items-center text-center py-5 px-5">
                    <h1 className=" text-white" >Bienvenue sur la page Web du Zeduc-Sp@ce</h1>
                    <h6 className=" text-white"style={{fontFamily:'Imprint MT Shadow;'}}>
                        Le miam-miam est tout ce dont un étudiant a besoin. Commandez, faites-vous plaisir.
                        <br/>Manger le miam-miam donne de la force, rend pertinent et facilite les études.
                    </h6>
                    <img src= { platimg} alt="image"  />
                    
                </div>

            </div>
            <div className="col-1 mt-3">
            <img src= { tomimg} alt="image" style={{marginTop:'2000px;',width:"200px"}} />
            </div>
            
        </div>
      
    );
  };
  
export default Hero;
  