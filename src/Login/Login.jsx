function Login(){
    return(
       <div className="container-fluid">
          <div className="container">
             <div className="form-section">
                <h2>Connexion</h2>
                <form>
                   <div className="form-group">
                     <label htmlFor="email">Email*</label>
                     <input type="email" id="email" placeholder="Email" />
                   </div>
                   <div className="form-group">
                     <label htmlFor="password">Mot de passe*</label>
                     <input type="password" id="password" placeholder="Password" />
                     <div className="forgot">
                      <span className="forgot-password">Forgotten Password ?</span>
                     </div>
                     
                   </div>
                   <div >
                     <button className="login-btn" type="submit">Connexion</button>
                   </div>
                   <div className="create-account">
                      Vous n'avez pas de compte ?<a href="/inscription">Créer un compte</a>
                   </div>
                   
                </form>
             </div>
          </div>
       </div>
    );
}

export default Login;