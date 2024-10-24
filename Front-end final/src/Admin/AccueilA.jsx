import React, { useEffect, useState } from 'react';
import 'bootstrap/dist/css/bootstrap.min.css';
import { LineChart, Line, XAxis, YAxis, CartesianGrid, Tooltip, Legend, ResponsiveContainer } from 'recharts';
import NavigaAdmin from './NavigaAdmin';
import Address from '../Panier_Etudiant/Address';

const AccueilA = () => {
    const [stats, setStats] = useState({
        revenu_mois: 0,
        nombre_commandes_mois: 0,
        revenu_jour: 0,
        stats_par_mois: []
    });

    // Fonction pour récupérer les données depuis l'API
    const fetchStats = async () => {
        try {
            const response = await fetch('http://localhost/Backend/statcommande_controller.php');
            const data = await response.json();
            setStats(data);
        } catch (error) {
            console.error('Erreur lors de la récupération des données :', error);
        }
    };

    useEffect(() => {
        fetchStats();
    }, []);

    const mois = ['Jan', 'Fév', 'Mar', 'Avr', 'Mai', 'Juin', 'Juil', 'Août', 'Sep', 'Oct', 'Nov', 'Déc'];

    const statsParMoisAvecNom = stats.stats_par_mois.map(stat => ({
        ...stat,
        mois_nom: mois[stat.mois - 1]
    }));

    // Calculer les valeurs maximales pour les revenus et le nombre de commandes
    const maxRevenus = Math.max(...statsParMoisAvecNom.map(stat => stat.revenus));
    const maxCommandes = Math.max(...statsParMoisAvecNom.map(stat => stat.nombre_commandes));

    // Déterminer le nombre d'intervalles (10 dans ce cas)
    const numberOfIntervals = 10;

    // Calculer les valeurs de l'axe des ordonnées
    const revenuInterval = maxRevenus / numberOfIntervals;
    const commandesInterval = maxCommandes / numberOfIntervals;

    const revenuTicks = Array.from({ length: numberOfIntervals + 1 }, (_, i) => Math.ceil(revenuInterval * i));
    const commandesTicks = Array.from({ length: numberOfIntervals + 1 }, (_, i) => Math.ceil(commandesInterval * i));

    return (
        <div className="container mx-4">

            <NavigaAdmin />

            <div className="d-flex justify-content-between align-items-center my-4">
                <h1 className="imprint-text text-white" style={{ fontFamily: 'Imprint MT Shadow' }}>Bienvenue au Dashboard</h1>
            </div>

            <div className="row my-4">
                <div className="col-md-4 col-sm-12 mb-3">
                    <div className="card">
                        <div className="card-body">
                            <h5 className="card-title imprint-text" style={{ fontFamily: 'Imprint MT Shadow' }}>Revenu du mois</h5>
                            <hr />
                            <div className="d-flex justify-content-between">
                                <span className="imprint-text" style={{ fontFamily: 'Imprint MT Shadow' }}>{stats.revenu_mois} FCFA</span>
                            </div>
                        </div>
                    </div>
                </div>

                <div className="col-md-4 col-sm-12 mb-3">
                    <div className="card">
                        <div className="card-body">
                            <h5 className="card-title imprint-text" style={{ fontFamily: 'Imprint MT Shadow' }}>Nombre de commandes (mois)</h5>
                            <hr />
                            <div className="d-flex justify-content-between">
                                <span className="imprint-text" style={{ fontFamily: 'Imprint MT Shadow' }}>{stats.nombre_commandes_mois}</span>
                            </div>
                        </div>
                    </div>
                </div>

                <div className="col-md-4 col-sm-12 mb-3">
                    <div className="card">
                        <div className="card-body">
                            <h5 className="card-title imprint-text" style={{ fontFamily: 'Imprint MT Shadow' }}>Revenu du jour</h5>
                            <hr />
                            <div className="d-flex justify-content-between">
                                <span className="imprint-text" style={{ fontFamily: 'Imprint MT Shadow' }}>{stats.revenu_jour} FCFA</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div className="container my-5 border">
                <h2 className="text-center text-white mb-4" style={{ fontFamily: 'Imprint MT Shadow' }}>Vos Stats</h2>
                <div className="chart-container">
                    <ResponsiveContainer width="100%" height={400}>
                        <LineChart
                            data={statsParMoisAvecNom}
                            margin={{
                                top: 5, right: 30, left: 20, bottom: 5,
                            }}
                        >
                            <CartesianGrid strokeDasharray="3 3" />
                            <XAxis dataKey="mois_nom" />
                            <YAxis 
                                yAxisId="left" 
                                label={{ value: 'Revenus (FCFA)', angle: -90, position: 'insideLeft', dy: -10 }} 
                                ticks={revenuTicks} 
                                domain={[0, Math.ceil(maxRevenus)]}
                            />
                            <YAxis 
                                yAxisId="right" 
                                orientation="right" 
                                label={{ value: 'Nombre de commandes', angle: -90, position: 'insideRight', dy: -10 }} 
                                ticks={commandesTicks} 
                                domain={[0, Math.ceil(maxCommandes)]}
                            />
                            <Tooltip />
                            <Legend />
                            <Line yAxisId="left" type="monotone" dataKey="revenus" stroke="#82ca9d" name="Revenus" />
                            <Line yAxisId="right" type="monotone" dataKey="nombre_commandes" stroke="#8884d8" name="Nombre de commandes" />
                        </LineChart>
                    </ResponsiveContainer>
                </div>
            </div>

            <Address />
        </div>
    );
};

export default AccueilA;
