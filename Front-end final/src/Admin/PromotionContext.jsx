import React, { createContext, useState } from 'react';

// Créer un contexte pour partager les promotions
export const PromotionsContext = createContext();

export const PromotionsProvider = ({ children }) => {
  const [promotions, setPromotions] = useState([
    { date: '01/01/2024', imgSrc: '', title: 'Promo 1', description: 'Description de la promotion 1.', link: '#promo1' },
    // Ajoutez ici toutes les autres promotions initiales
  ]);

  // Fonction pour ajouter une promotion
  const addPromotion = (newPromo) => {
    setPromotions([...promotions, newPromo]);
  };

  // Fonction pour modifier une promotion
  const updatePromotion = (index, updatedPromo) => {
    const updatedPromotions = promotions.map((promo, i) => (i === index ? updatedPromo : promo));
    setPromotions(updatedPromotions);
  };

  // Fonction pour supprimer une promotion
  const deletePromotion = (index) => {
    const updatedPromotions = promotions.filter((_, i) => i !== index);
    setPromotions(updatedPromotions);
  };

  return (
    <PromotionsContext.Provider value={{ promotions, addPromotion, updatePromotion, deletePromotion }}>
      {children}
    </PromotionsContext.Provider>
  );
};
