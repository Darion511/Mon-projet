import React from 'react';
import { LineChart, Line, XAxis, YAxis, CartesianGrid, Tooltip, Legend, ResponsiveContainer } from 'recharts';
import NavGerant from './NavGerant';
import Address from '../Panier_Etudiant/Address';

const AccueilG = () => {
    const data = [
        { name: 'Jan', uv: 4000, pv: 2400, amt: 2400 },
        { name: 'Feb', uv: 3000, pv: 1398, amt: 2210 },
        { name: 'Mar', uv: 2000, pv: 9800, amt: 2290 },
        { name: 'Apr', uv: 2780, pv: 3908, amt: 2000 },
        { name: 'May', uv: 1890, pv: 4800, amt: 2181 },
        { name: 'Jun', uv: 2390, pv: 3800, amt: 2500 },
        { name: 'Jul', uv: 3490, pv: 4300, amt: 2100 },
    ];

    return (
        <div className="container justify-content-between align-items-center ">

            <NavGerant/>
        
            <div className="d-flex justify-content-between align-items-center my-4">
                <h1 className="imprint-text text-white"style={{fontFamily:'Imprint MT Shadow'}}>Bienvenue to Dashboard</h1>
            </div>

            <div className="row my-4">
                <div className="col-md-4">
                    <div className="card mt-4 border-white"style={{fontFamily:'Imprint MT Shadow',backgroundColor:'black',color:"white"}}>
                        <div className="card-body">
                            <h5 className="card-title imprint-text"style={{fontFamily:'Imprint MT Shadow'}}>yemelelelellee</h5>
                            <hr />
                            <div className="d-flex justify-content-between">
                                <span className="imprint-text"style={{fontFamily:'Imprint MT Shadow'}}>un nombre</span>
                                <span className="imprint-text"style={{fontFamily:'Imprint MT Shadow'}}>un nombre</span>
                            </div>
                        </div>
                    </div>
                </div>

                <div className="col-md-4">
                    <div className="card mt-4 border-white"style={{fontFamily:'Imprint MT Shadow',backgroundColor:'black',color:"white"}}>
                        <div className="card-body">
                            <h5 className="card-title imprint-text"style={{fontFamily:'Imprint MT Shadow'}}>yemelelelellee</h5>
                            <hr />
                            <div className="d-flex justify-content-between">
                                <span className="imprint-text"style={{fontFamily:'Imprint MT Shadow'}}>unnombre</span>
                                <span className="imprint-text"style={{fontFamily:'Imprint MT Shadow'}}>unnombre</span>
                            </div>
                        </div>
                    </div>
                </div>

                <div className="col-md-4">
                    <div className="card mt-4 border-white"style={{fontFamily:'Imprint MT Shadow',backgroundColor:'black',color:"white"}}>
                        <div className="card-body">
                            <h5 className="card-title imprint-text"style={{fontFamily:'Imprint MT Shadow'}}>yemelelelellee</h5>
                            <hr />
                            <div className="d-flex justify-content-between">
                                <span className="imprint-text"style={{fontFamily:'Imprint MT Shadow'}}>unnombre</span>
                                <span className="imprint-text"style={{fontFamily:'Imprint MT Shadow'}}>unnombre</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div className="container my-5 border">
                <h2 className="text-center text-white mb-4"style={{fontFamily:'Imprint MT Shadow'}}>Vos Stats</h2>
                <div className="chart-container">
                    <ResponsiveContainer width="100%" height={400}>
                    <LineChart
                        data={data}
                        margin={{
                        top: 5, right: 30, left: 20, bottom: 5,
                        }}
                    >
                        <CartesianGrid strokeDasharray="3 3" />
                        <XAxis dataKey="name" />
                        <YAxis />
                        <Tooltip />
                        <Legend />
                        <Line type="monotone" dataKey="pv" stroke="#8884d8" />
                        <Line type="monotone" dataKey="uv" stroke="#82ca9d" />
                    </LineChart>
                    </ResponsiveContainer>
                </div>
            </div>
            <Address/>
        </div>
    );
};

export default AccueilG;
