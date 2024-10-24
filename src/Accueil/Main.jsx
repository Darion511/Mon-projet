import URLimg from '../assets/pexels-goumbik-1309593-removebg-preview 1.png';

const Main = () => {
    return (
      <div className="container my-5">
        
        <div className="row align-items-center">
          {/* Colonne de l'image */}
          <div className="col-md-6 text-center">
            <img
              src={URLimg} // Remplace par l'URL de ton image
              alt="Description de l'image"
              className="img-fluid"
            />
          </div>
  
          {/* Colonne du texte */}
          <div className="col-md-6">
            <h2 className=" text-white" style={{fontFamily:'Imprint MT Shadow'}}>un titre</h2>
            <p className=" text-white" style={{fontFamily:'Imprint MT Shadow'}}>
              un plat venu du soleil.Comme raah le dieu du soleil.croquer dans se bout de pain elimine la famine a vie, manger ca cest comme menger le corps du christ, unn enourriture
            </p>
  
            {/* Bouton sous le texte */}
            <button className="btn  mx-4 rounded-4"style={{fontFamily:'Imprint MT Shadow',backgroundColor:'#CFBD97'}}>En savoir plus </button>
          </div>
        </div><br/><br/><br/><br/>
        <h2 className=" text-center text-white"style={{fontFamily:'Imprint MT Shadow'}}>Menu de jour</h2>
      </div>
  
    );
}
  
export default Main;
  