import logoimg from '../assets/logo (5).png'

function Meilleurclient(){
    return(
        <>
            <main>

                <nav>
                    <ul>
                        <li><a href="#">menu</a></li>
                        <li><a href="#">About Us</a></li>
                        <li><a href="#">Home</a></li>
                        <li><a href="#">Login</a></li>
                    </ul>
                </nav>

                <div class="logo">
                    <img src={logoimg}alt="Logo"/>
                </div>

                <section class="client-ranking">
                    <h1>Meilleurs Clients</h1>
                    <div class="search">
                        <input type="text" placeholder="Search"/>
                        <button>🔍</button>
                    </div>

                    <div class="ranking-info">
                        <div class="info-box">
                            <h1>Ton Rang</h1>
                            <p>#352</p>
                        </div>
                        <div class="info-box">
                            <h1>Total / Commandes</h1>
                            <p>30 Commandes</p>
                            <p>20.0000 fcfa</p>
                        </div>
                    </div>

                    <table>
                        <thead>
                            <tr>
                                <th>Rang</th>
                                <th>Nom</th>
                                <th>Total</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>001</td>
                                <td>Aloys</td>
                                <td>100.000 Fcfa</td>
                            </tr>
                        </tbody>
                    </table>
                </section>
            </main>
            <footer>
                <div class="footer-container">
                    <div class="footer-column">
                        <h3>Address</h3>
                        <p>+237 699018368</p>
                    </div>
                    <div class="footer-column">
                        <h3>Opening</h3>
                        <p>Everyday - 08am to 08pm</p>
                    </div>
                    <div class="footer-column">
                        <h3>General</h3>
                        <ul>
                            <li><a href="#">Menu</a></li>
                            <li><a href="#">Services</a></li>
                            <li><a href="#">About Us</a></li>
                        </ul>
                    </div>
                </div>


            </footer>
        </>
    );
}
export default Meilleurclient;