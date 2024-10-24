function TitleP(){

    const search = {
        color:"white",
    }

    return (
        <>
            <div className="container-fluid mx-5 ">
                <div className="row ">
                    <div className="col-6">
                        <h1 className=" text-white  mt-5"style={{fontFamily:'Imprint MT Shadow'}}>Vos Parrains</h1>
                    </div>
                    <div className="col-6 ">
                     <input type="text" className="form-control   mt-5 mb-5  w-50" placeholder="Rechercher..." style={search}/>
                    </div>
                </div>
                <div className="bg-white mx-5">
                  <hr/>
                </div>
            </div>
        </>
    );
}

export default TitleP;