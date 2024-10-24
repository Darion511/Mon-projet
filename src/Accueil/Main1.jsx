import imgSrc from '../assets/istockphoto-1091152512-612x612-removebg-preview 1 (1).png';
import { useNavigate } from 'react-router-dom';

const Main1 = () => {

    const items = [
      { imgSrc: '', text: 'Description 1' },
      { imgSrc: '', text: 'Description 2' },
      { imgSrc: '', text: 'Description 3' },
      { imgSrc: '', text: 'Description 4' },
      { imgSrc: '', text: 'Description 5' },
      { imgSrc: '', text: 'Description 6' },
    ];

    const navigate = useNavigate();

    const VersA = () => {
      navigate('/produit');
  }
    return (
      <div className="container ">
        <div className="row ">
          {items.map((item, index) => (
            <div key={index} className="col-md-4 mb-4 ">
              <div className="card text-center w-50 rounded-4" style={{ backgroundImage: "linear-gradient(#000000, #757575)"}}>
                <div className="card-body">
                  <img src={imgSrc} alt={`Image ${index + 1}`} className="img-fluid mb-3" />
                  <p className=''>{item.text}</p>
                  <button  type="button" className="btn  rounded-4 " style={{fontFamily:'Imprint MT Shadow;',backgroundColor:'#CFBD97'}}onClick={VersA}>Commander</button>
                </div>
              </div>
            </div>
          ))}
        </div>
      </div>
    );
}

export default Main1;