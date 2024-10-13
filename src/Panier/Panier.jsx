
import zeducimg from '../assets/image.png'

function Panier() {

    const style = {
        maxWidth: '100%', 
        height: 'auto'
    }

    return (
        <>
            <header>
               <nav>
                   <div className="logo">
                       <img src= {zeducimg }alt="zeduc img" style={style}/>
                   </div>
                   <ul>
                       <li><a href="#">Accueil</a></li>
                       <li><a href="#">Menu</a></li>
                       <li><a href="#">Promotion</a></li>
                       <li><a href="#">Evenement</a></li>
                       <li><a href="#">Mon panier</a></li>
                       <li><a href="#">Parrainages</a></li>
                   </ul>
                   <button className="Profil">Mon profil</button>
               </nav>
           </header>

           <div className="Header-content">
                <div className="MonPanier">Mon Panier</div>  
                <div className="container">
                    <div className="menu">
                        <div className="item">
                            <h3>Eru</h3>
                            <span>Prix : 1000 Fcfa</span>
                           <div className="quantite">
                              <label htmlFor="quantite-eru">Quantité :</label>
                              <input type="number" id="quantite-eru" name="quantite-eru" min="1"/>
                            </div>
                            <button className="AjouterAuPanier" >Ajouter au panier</button>
                        </div>
                        <div className="item">
                            <h3>Poulet Pane</h3>
                            <span>Prix : 1000 Fcfa</span>
                            <div className="quantite">
                                <label htmlFor="quantite-Poulet">Quantité :</label>
                                <input type="number" id="quantite-eru" name="quantite-eru" min="1"/>
                            </div>
                            <button className="AjouterAuPanier" >Ajouter au panier</button>
                        </div>

                        <div className="item">
                            <h3>Poisson fri</h3>
                            <span>Prix : 1000 Fcfa</span>
                            <div className="quantite">
                               <label htmlFor="quantite-Poisson">Quantité :</label>
                                <input type="number" id="quantite-eru" name="quantite-eru" min="1"/>
                            </div>
                            <button className="AjouterAuPanier">Ajouter au panier</button>
                        </div>

                        <div className="item">
                            <h3>Eru</h3>
                            <span>Prix : 1000 Fcfa</span>
                            <div className="quantite">
                                <label htmlFor="quantite-eru">Quantité :</label>
                                <input type="number" id="quantite-eru" name="quantite-eru" min="1"/>
                            </div>
                            <button className="AjouterAuPanier" >Ajouter au panier</button>
                        </div>

                        <div className="item">
                            <h3>Eru</h3>
                            <span>Prix : 1000 Fcfa</span>
                            <div className="quantite">
                                <label htmlFor="quantite-eru">Quantité :</label>
                                <input type="number" id="quantite-eru" name="quantite-eru" min="1"/>
                            </div>
                            <button className="AjouterAuPanier" >Ajouter au panier</button>
                        </div>    

                        <div className="panier">
                            <h2>Vos achats</h2>
                            <div className="article">
                                <span>Eru :</span><span>1000</span>
                            </div>
                            <div className="article">
                                <span>Poulet pane :</span><span>1000</span>
                            </div>
                            <div className="article">
                                <span>Poisson fri :</span><span>1000</span>
                            </div>
                            <div className="total">
                                <span>Total :</span><span>3000</span>
                            </div>
                            <button className="continuer">Continuer vos achats </button>
                        </div>
                        <footer>
                            <div className="footer-container">
                                <div className="footer-logo">
                                    <div className="up">
                                      <img src={zeducimg } alt="zeduc Logo"/>
                                    </div>
                                    <div className="Email"> 
                                        <p>Email: <a href="mailto:info@zeduc.com">info@zeduc.com</a></p>
                                    </div>
                                    <div className="Contact">   
                                        <p>Téléphone: <a href="tel:+237683417514">+237 683 417 514</a></p>
                                    </div>
                                    <div className="Localisation">
                                        <p>Yassa, Douala/Cameroun</p>
                                    </div>
                                </div>
                                <div className="footer-links">
                                    <h3>Accueil</h3>
                                    <ul>
                                        <li><a href="#">Menu</a></li>
                                        <li><a href="#">promotion</a></li>
                                        <li><a href="#">Evenement</a></li>
                                        <li><a href="#">Parrainages</a></li>
                                    </ul>
                                </div>
                                <div className="footer-social">
                                    <h3>Social Profiles</h3>
                                    <a href="#"><i className="fab fa-facebook"></i></a>
                                    <a href="#"><i className="fab fa-twitter"></i></a>
                                    <a href="#"><i className="fab fa-linkedin"></i></a>
                                </div>
                            </div>
                            <p>© 2024 Zeduc@Space. All rights reserved.</p>
                        </footer> 
                    </div>
                </div> 
            </div> 
        </>
    );

}

export default Panier;
