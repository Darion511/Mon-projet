import React, { createContext, useState, useContext } from 'react';

// Création du contexte
export const PanierContext = createContext();

// Composant Provider pour le panier
export const PanierProvider = ({ children }) => {
  const [panier, setPanier] = useState([]);

  // Fonction pour ajouter un article au panier
  const ajouterAuPanier = (article) => {
    setPanier((prevPanier) => [...prevPanier, article]);
  };

  // Fonction pour supprimer un article du panier
  const supprimerDuPanier = (id) => {
    setPanier((prevPanier) => prevPanier.filter(item => item.id !== id));
  };

  // Fonction pour vider le panier
  const viderPanier = () => {
    setPanier([]);
  };

  // Valeur à passer au contexte
  const value = {
    panier,
    ajouterAuPanier,
    supprimerDuPanier,
    viderPanier,
  };

  return (
    <PanierContext.Provider value={value}>
      {children}
    </PanierContext.Provider>
  );
};

// Hook personnalisé pour utiliser le contexte du panier
export const usePanier = () => {
  return useContext(PanierContext);
};
