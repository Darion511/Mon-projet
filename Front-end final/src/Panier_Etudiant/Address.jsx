const Address = () => {
    return (
      <footer className=" text-light py-4">
        <div className="container my-5 ">
            <div className="bg-white">
                <hr/>
            </div>
            <div className="row" >
                {/* Colonne 1: Informations sur l'entreprise */}
                <div className="col-md-4">
                    <h5>À propos de nous</h5>
                    <p>
                        Zeduc-Sp@ce est un site dédié aux étudiants pour faciliter leur parcours scolaire
                        tout en prenant soin de leur bien-être.
                    </p>
                </div>
    
                {/* Colonne 2: Liens rapides */}
                <div className="col-md-4  ">
                    <h5>Liens rapides</h5>
                    <ul className="list-unstyled">
                        <li>
                         <a href="#home" className="text-light">Accueil</a>
                        </li>
                        <li>
                         <a href="#about" className="text-light">À propos</a>
                        </li>
                        <li>
                         <a href="#services" className="text-light">Services</a>
                        </li>
                        <li>
                         <a href="#contact" className="text-light">Contact</a>
                        </li>
                    </ul>
                </div>
    
                {/* Colonne 3: Réseaux sociaux */}
                <div className="col-md-4">
                    <h5>Suivez-nous</h5>
                    <a href="https://facebook.com" className="text-light me-2">
                        <i className="fab fa-facebook-f"></i> Facebook
                    </a>
                    <br />
                    <a href="https://twitter.com" className="text-light me-2">
                        <i className="fab fa-twitter"></i> Twitter
                    </a>
                    <br />
                    <a href="https://instagram.com" className="text-light me-2">
                        <i className="fab fa-instagram"></i> Instagram
                    </a>
                </div>
            </div>
    
            {/* Bas de page */}
            <div className="text-center mt-3">
                <p className="mb-0">&copy; 2024 Zeduc-Sp@ce. Tous droits réservés.</p>
          </div>
        </div>
      </footer>
    );
  };
  
export default Address;
  