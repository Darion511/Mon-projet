
import logoimg from '../assets/logo (2).png'

function MesCommande(){
    return(
        <>
            {/*Début de l'en-tête*/}
                <header>
                <div class="logo">
                    <img src={logoimg} alt="Logo"/>
                </div>
                {/*Menu de navigation principal*/}
                <nav>
                    <ul class="nav">
                        <li class="nav-item"><a href="menu.html" class="nav-link">Menu</a></li>
                        <li class="nav-item"><a href="Evenement.html" class="nav-link">Evenement</a></li>
                        <li class="nav-item"><a href="Accueil.html" class="nav-link">Accueil</a></li>
                        <li class="nav-item"><a href="inscription.html" class="btn btn-outline-light">Connexion</a></li>
                    </ul>
                </nav>
                <a href="#" class="login-btn">Login</a>
            </header>
            {/*Fin de l'en-tête*/}

            {/*Début de la section des commandes*/}
            <main class="container my-5">
                <section id="mes-commandes">
                    <h1 class="text-center mb-4">Mes Commandes</h1>
                    <hr class="menu-divider"/>

                    {/*Début d'une commande*/}
                    <div class="commande-card mb-3">
                        <h2 class="commande-titre">Ma Commande</h2>
                        <p>Eru : 1000</p>
                        <p>Poulet pané : 1200</p>
                        <p>Poisson frit : 1500</p>
                        <p>Date : 10/08/2024</p>
                        <p>Heure : 14:48</p>
                        <p class="total">Total: 1050 Franc</p>
                    </div>
                    {/*Fin d'une commande*/}

                    {/*Ajout d'une commande supplémentaire*/}
                    <div class="commande-card mb-3">
                        <h2 class="commande-titre">Ma Commande</h2>
                        <p>Eru : 1000</p>
                        <p>Poulet pané : 1200</p>
                        <p>Poisson frit : 1500</p>
                        <p>Date : 10/08/2024</p>
                        <p>Heure : 14:48</p>
                        <p class="total">Total: 1050 Franc</p>
                    </div>
                    {/*Fin de la deuxième commande*/}

                </section>
            </main>
            {/*Fin de la section des commandes*/}

            {/*Début du pied de page*/}
            <footer class="container-fluid mt-5">
                <div class="row text-light justify-content-center">
                    <div class="col-md-3 text-center">
                        <h3>  Adresse  </h3>
                        <p>+237 699018368   </p>
                    </div>
                    <div class="col-md-4 text-center">
                        <h3> Horaires d'ouverture </h3>
                        <p>   Tous les jours - 08h à 20h   </p>
                    </div>
                    <div class="col-md-5 text-center">
                        <h3>  Général  </h3>
                        <ul class="list-unstyled">
                            <li><a href="#" class="text-light">Menu</a></li>
                            <li><a href="#" class="text-light">Services</a></li>
                            <li><a href="#" class="text-light">À propos de nous</a></li>
                        </ul>
                    </div>
                </div>
            </footer>
            {/*Fin du pied de page */}
       </>
    );
}

export default MesCommande;