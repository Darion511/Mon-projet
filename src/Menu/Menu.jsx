import eruimg from '../assets/eru.png'
import logoimg from '../assets/logo (2).png'

function Menu(){
    return(
        <>
            <header class="container">
                <nav class="d-flex justify-content-between align-items-center">
                    <img src={logoimg} alt="Logo" class="logo"/>
                    <ul class="nav">
                        <li class="nav-item"><a href="#" class="nav-link">Menu</a></li>
                        <li class="nav-item"><a href="#" class="nav-link">About Us</a></li>
                        <li class="nav-item"><a href="#" class="nav-link">Home</a></li>
                        <li class="nav-item"><a href="#" class="btn btn-outline-light">Login</a></li>
                    </ul>
                </nav>
            </header>

            <main class="container mt-5">
                <h1>Menu</h1>
                <hr class="menu-divider"/>

                <div class="row">
                    <div class="col-md-3 col-6 mb-8">
                        <div class="menu-card">
                            <img src={eruimg} alt="Plat de Eru" class="dish-image img-fluid"/>
                            <div class="menu-info">
                                <h2>Plat de Eru</h2>
                                <p>1500 Francs</p>
                                <div class="add-btn d-flex justify-content-between">
                                    <span>Add</span>
                                    <span class="arrow">&gt;</span>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3 col-6 mb-8">
                        <div class="menu-card">
                            <img src={eruimg}  alt="Plat de Eru" class="dish-image img-fluid"/>
                            <div class="menu-info">
                                <h2>Plat de Eru</h2>
                                <p>1500 Francs</p>
                                <div class="add-btn d-flex justify-content-between">
                                    <span>Add</span>
                                    <span class="arrow">&gt;</span>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3 col-6 mb-8">
                        <div class="menu-card">
                            <img src={eruimg}  alt="Plat de Eru" class="dish-image img-fluid"/>
                            <div class="menu-info">
                                <h2>Plat de Eru</h2>
                                <p>1500 Francs</p>
                                <div class="add-btn d-flex justify-content-between">
                                    <span>Add</span>
                                    <span class="arrow">&gt;</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </main>

            <footer class="container-fluid mt-5">
                <div class="row text-light">
                    <div class="col-md-4">
                        <h3>Address</h3>
                        <p>+237 699018368</p>
                    </div>
                    <div class="col-md-4">
                        <h3>Opening</h3>
                        <p>Everyday - 08am to 08pm</p>
                    </div>
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

        </>
    );
}

export default Menu;