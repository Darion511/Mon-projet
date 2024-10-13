import logoimg from '../assets/logo (2).png'

function Evenement(){
    return(
        <>
            {/*Début de l'en-tête*/}
            <header>
                <div class="logo">
                    <img src={logoimg} alt="Logo"/>
                </div>
                {/*Menu de navigation principal*/}6
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

            {/*Début de la section des événements */}
            <main class="container my-5">
                <section id="evenements">
                    <h1 class="text-center mb-4">Événements à Venir</h1>
                    <hr class="menu-divider"/>

                    {/*Début d'un événement*/}
                    <div class="evenement-card mb-3">
                        <h2 class="evenement-titre">Soirée Gastronomique</h2>
                        <p>Date : 15/10/2024</p>
                        <p>Lieu : Restaurant Mon Miam Miam</p>
                        <p>Heure : 19:00</p>
                        <p>Description : Un dîner spécial avec des chefs étoilés, proposant des plats raffinés pour une expérience culinaire unique.</p>
                    </div>
                    {/*Fin d'un événement*/}

                    {/*Ajout d'un autre événement*/}
                    <div class="evenement-card mb-3">
                        <h2 class="evenement-titre">Atelier de Cuisine</h2>
                        <p>Date : 25/10/2024</p>
                        <p>Lieu : Restaurant Mon Miam Miam</p>
                        <p>Heure : 14:00</p>
                        <p>Description : Apprenez les secrets de la cuisine avec notre chef ! Un atelier interactif avec dégustation à la clé.</p>
                    </div>
                    {/* Fin du deuxième événement */}
                </section>
            </main>
            {/*Fin de la section des événements*/}

            {/* Footer Section*/}
            <footer class="container-fluid mt-5">
                <div class="row text-light">
                    {/*Address Section */}
                    <div class="col-md-4">
                        <h3>Address</h3>
                        <p>+237 699018368</p>
                    </div>
                    
                    {/*Opening Hours Section */} 
                    <div class="col-md-4">
                        <h3>Opening</h3>
                        <p>Everyday - 08am to 08pm</p>
                    </div>
                    
                    {/*General Links Section*/}
                    <div class="col-md-4">
                        <h3>General</h3>
                        <ul class="list-unstyled">
                            <li><a href="#" class="text-light">Menu</a></li>
                            <li><a href="#" class="text-light">Services</a></li>
                            <li><a href="#" class="text-light">About Us</a></li>
                        </ul>
                    </div>
                </div>
            </footer>    
            {/*Fin du pied de page */}
     </>
    );
}

export default Evenement;