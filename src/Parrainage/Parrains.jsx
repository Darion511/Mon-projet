import NavigatorF from "../AccueilFinal/NavigatorF";
import Address from "../Panier_Etudiant/Address";
import PointsF from "./PointsF";
import TitreP from "./TitreP"; 


function Parrains(){
    return(
      <>
      <NavigatorF/>
        <TitreP/>
        <PointsF/>
        <Address/>
      </>  
    );
}

export default Parrains;