import TitreH from "./TitreH"; 
import Address from "../Panier_Etudiant/Address";
import NavigatorF from "../AccueilFinal/NavigatorF";
import Historique from "./Historique";
function HistF(){
    return(
      <>
        <NavigatorF/>
        <TitreH/>
        <Historique/>
        <Address/>
      </>  
    );
}

export default HistF;