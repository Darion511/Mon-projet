import React, { useState, createContext } from 'react';

export const ProductContext = createContext();

export const ProductProvider = ({ children }) => {
    const [produits, setProduits] = useState([]);  // Initialiser avec un tableau vide

    const addProduct = (newProduct) => {
        setProduits([...produits, { ...newProduct, id: produits.length }]);
    };

    return (
        <ProductContext.Provider value={{ produits, setProduits, addProduct }}>
            {children}
        </ProductContext.Provider>
    );
};
