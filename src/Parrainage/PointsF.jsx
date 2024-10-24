
function PointsF(){
    return(
      <>
        {/* <div className="container">
            <div className="row">
                <div className="col-12 col-sm-6 w-sm-50">
                  <Points/>
                </div>
                <div className="col-12 col-sm-6  w-sm-50">
                    <Points1/>
                </div>

            </div>
        </div> */}
        <div className="container-fluid  ">
        
            <div className="d-flex justify-content-between align-items-center my-4 mx-5">
                <h1 className="imprint-text text-white"style={{fontFamily:'Imprint MT Shadow'}}>Page de Parrainage</h1>
                <input 
                    type="text" 
                    className="form-control w-25" 
                    placeholder="Rechercher..." 
                />
            </div>

            <div className="row my-4">
                <div className="col-md-6">
                    <div className="card mt-2 mx-5">
                        <div className="card-body">
                            <h5 className="card-title imprint-text"style={{fontFamily:'Imprint MT Shadow'}}>blabala Carte 1</h5>
                            <hr />
                            <div className="d-flex justify-content-between">
                                <span className="imprint-text"style={{fontFamily:'Imprint MT Shadow'}}>un chiffre la</span>
                                <span className="imprint-text"style={{fontFamily:'Imprint MT Shadow'}}>un chiffre la </span>
                            </div>
                        </div>
                    </div>
                </div>

                <div className="col-md-6">
                    <div className="card mt-2 mx-5">
                        <div className="card-body m">
                            <h5 className="card-title imprint-text"style={{fontFamily:'Imprint MT Shadow'}}>blabla Carte 2</h5>
                            <hr />
                            <div className="d-flex justify-content-between">
                                <span className="imprint-text"style={{fontFamily:'Imprint MT Shadow'}}>un chiffre la</span>
                                <span className="imprint-text"style={{fontFamily:'Imprint MT Shadow'}}>un chiffre la </span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div className="mx-5 my-4 rounded-4">
                <table className="table table-bordered ">
                    <thead>
                        <tr>
                            <th scope="col"style={{fontFamily:'Imprint MT Shadow'}}>Nom</th>
                            <th scope="col"style={{fontFamily:'Imprint MT Shadow'}}>Commande</th>
                            <th scope="col"style={{fontFamily:'Imprint MT Shadow'}}>Photo</th>
                        </tr>
                    </thead>
                    <tbody>
                        {[...Array(10)].map((_, index) => (
                            <tr key={index}>
                                <td>Lolita {index + 1}</td>
                                <td> Sa commande {index + 1}</td>
                                <td><img src="" alt="Photo" /></td>
                            </tr>
                        ))}
                    </tbody>
                </table>
            </div>
        </div>
      </>  
    );
}

export default PointsF;
