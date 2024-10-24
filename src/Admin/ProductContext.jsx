// ProductContext.js
import React, { useState, createContext } from 'react';

export const ProductContext = createContext();

export const ProductProvider = ({ children }) => {
    const [produits, setProduits] = useState(
        [...Array(20)].map((_, index) => ({
            id: index,
            title: `Produit ${index + 1}`,
            description: `Un met délicieux, venez déguster le produit ${index + 1}.`,
            imgSrc: '', // Ajouter des liens vers des images si besoin
        }))
    );

    const addProduct = (newProduct) => {
        setProduits([...produits, { ...newProduct, id: produits.length }]);
    };

    return (
        <ProductContext.Provider value={{ produits, addProduct }}>
            {children}
        </ProductContext.Provider>
    );
};
