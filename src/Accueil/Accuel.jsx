import logoimg from '../assets/logo (2).png'
import eruimg from '../assets/eru.png'

function Accueil(){
    return(
        <>
            <header class="container">
                <nav class="d-flex justify-content-between align-items-center">
                    <img src={logoimg}alt="Logo" class="logo"/>
                    <ul class="nav">
                        <li class="nav-item"><a href="menu.html" class="nav-link">Menu</a></li>
                        <li class="nav-item"><a href="Evenement.html" class="nav-link">Evenement</a></li>
                        <li class="nav-item"><a href="Accueil.html" class="nav-link">Accueil</a></li>
                        <li class="nav-item"><a href="inscription.html" class="btn btn-outline-light">Connexion</a></li>
                    </ul>
                </nav>
            </header>

            <main class="container mt-5">
                <section class="text-center mb-5">
                    <h1>Bienvenue chez Mon Miam Miam</h1>
                    <p class="lead">Découvrez des plats délicieux faits maison, préparés avec amour.</p>
                    <img src={eruimg }alt="Plat spécial" class="img-fluid mb-4" style="max-width: 400px;"/>
                    <a href="menu.html" class="btn btn-light">Voir le Menu</a>
                </section>

                <section>
                    <h2 class="text-center mb-4">Nos Services</h2>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="service-card text-center">
                                <h3>Livraison Rapide</h3>
                                <p>Profitez de notre service de livraison rapide pour déguster vos plats préférés à la maison.</p>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="service-card text-center">
                                <h3>Sécuriser</h3>
                                <p>Système de paiement sécuriser</p>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="service-card text-center">
                                <h3>Menu Varié</h3>
                                <p>Découvrez notre menu varié, avec des options pour tous les goûts.</p>
                            </div>
                        </div>
                    </div>
                </section>
            </main>

            <footer class="container-fluid mt-5">
                <div class="row text-light">
                    <div class="col-md-4">
                        <h3>Adresse</h3>
                        <p>+237 699018368</p>
                    </div>
                    <div class="col-md-4">
                        <h3>Horaires d'Ouverture</h3>
                        <p>Tous les jours - 08h à 20h</p>
                    </div>
                    <div class="col-md-4">
                        <h3>Général</h3>
                        <ul class="list-unstyled">
                            <li><a href="menu.html" class="text-light">Menu</a></li>
                            <li><a href="about.html" class="text-light">À propos</a></li>
                            <li><a href="services.html" class="text-light">Services</a></li>
                        </ul>
                    </div>
                </div>
            </footer>    
        </>
    );
    
}

export default Accueil;