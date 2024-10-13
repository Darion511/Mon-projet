import googleimg from '../assets/R.png'


function CreerCompte(){
   return(
        <div className="container-fluid">
           <div className="container">
                    <div className="form-section">
                        <h2>Creer un compte</h2>
                        <form>
                            <div className="form-group">
                                <label htmlFor="name">Votre nom*</label>
                                <input type="text" id="name" placeholder="Full name" />
                            </div>
                            <div className="form-group">
                                <label htmlFor="email">Votre  email*</label>
                                <input type="email" id="email" placeholder="Work email" />
                            </div>
                            <div className="form-group">
                                <label htmlFor="password">Mot de passe*</label>
                                <input type="password" id="password" placeholder="Password" />
                            </div>
                            <button className="login-btn" type="submit">Se connecter</button>
                        </form>
                        <div className="divider">
                           <div className="bar">
                             <hr />
                           </div>
                            <div className="or">
                             <span>or</span>
                            </div>
                            <div className="bar">
                             <hr />
                           </div>
                        </div>
                        <button className="google-btn">
                         <img src={googleimg} width={'30px'} alt="Google icon" />
                         Se connecter avec Google
                        </button>
                    </div>
            </div>
        </div> 
   ); 
}

export default CreerCompte;