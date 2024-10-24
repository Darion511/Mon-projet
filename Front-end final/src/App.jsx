import Panier from './Panier_Etudiant/Panier';
import  Home from './Accueil/Home';
import  HomeF from './AccueilFinal/HomeF';
import Menu from './Menu/Menu';
import Produit from './Produit/Produit';
import Contact from './Contact/Contact';
import CreerCompte from './Sign/CreerCompte';
import Connexion from './Login/connexion';
import Final from './Evenement/Final';
import Parrains from './Parrainage/Parrains';
import {BrowserRouter as Router, Route, Routes } from 'react-router-dom';
import AccueilA from './Admin/AccueilA';
import AccueilG from './Gerant/AccueilG';
import Employe from './Admin/Employe';
import Client from './Admin/Client';
import Promotion from './Admin/Promotion';
import MenuA from './Admin/MenuA';
import Signadmin from './Admin/Sign';
import { PromotionsProvider } from './Admin/PromotionContext';
import ContactF from './AccueilFinal/ContactF';
import HistF from './Historique/HistF';
import EmployeGerant from './Gerant/EmployeGerant';
import CommandeE from './Employe/CommandeEmploye';
import AccueilE from './Employe/AccueilE';
import MenuEmploye from './Employe/MenuEmploye';
import ReclamationsEmploye from './Employe/ReclamationsEmploye';

function App() {
  return (
    <PromotionsProvider>
    <Router>
      <div>
        <Routes>
          <Route  path="/" element={<Home />}></Route>
          <Route  path="/HomeF" element={<HomeF />}></Route>
          <Route  path="/panier" element={<Panier />}></Route>
          <Route  path="/menu" element={<Menu />}></Route>
          <Route  path="/contact" element={<Contact />}></Route>
          <Route  path="/contactf" element={<ContactF />}></Route>
          <Route  path="/creer-compte" element={<CreerCompte />}></Route>
          <Route  path="/connexion" element={<Connexion />}></Route>
          <Route  path="/parrainage" element={<Parrains />}></Route>
          <Route  path="/final" element={<Final />}></Route>
          <Route  path="/produit" element={<Produit />}></Route>
          <Route  path="/parrains" element={<Parrains />}></Route>
          <Route  path="/accueil" element={<AccueilA />}></Route>
          <Route  path="/accueilG" element={<AccueilG />}></Route>
          <Route  path="/accueilE" element={<AccueilE />}></Route>
          <Route  path="/employe" element={<Employe />}></Route>
          <Route  path="/client" element={<Client />}></Route>
          <Route  path="/promotion" element={<Promotion />}></Route>
          <Route  path="/menuA" element={<MenuA />}></Route>
          <Route  path="/sign" element={<Signadmin />}></Route>
          <Route  path="/histof" element={<HistF />}></Route>
          <Route  path="/employeG" element={<EmployeGerant />}></Route>
          <Route  path="/reclamationE" element={<ReclamationsEmploye />}></Route>
          <Route  path="/commandeE" element={<CommandeE />}></Route>
          <Route  path="/menuE" element={<MenuEmploye />}></Route>
        </Routes>
      </div>
      
    </Router>
    </PromotionsProvider>
    
  );
}
export default App;
