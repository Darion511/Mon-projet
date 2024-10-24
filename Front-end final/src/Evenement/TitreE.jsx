function TitleE(){

    const search = {
        color:"white",
    }

    return (
        <>
            <div className="container-fluid mx-5">
                <div className="row mx-5">
                    <div className="col-6">
                        <h1 className=" text-white  mt-5"style={{fontFamily:'Imprint MT Shadow'}}>Evenement</h1>
                    </div>
                    <div className="col-6 ">
                      <input type="text" className="form-control w-md-50 mt-5 " placeholder="Rechercher..." style={search}/>
                    </div>
                </div>
                <div className="bg-white mx-5">
                  <hr/>
                </div>
            </div>
        </>
    );
}

export default TitleE;