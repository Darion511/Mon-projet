// CommandeContext.js
import React, { createContext, useState } from 'react';

export const CommandeContext = createContext();

export const CommandeProvider = ({ children }) => {
    const [commandes, setCommandes] = useState([]);

    const addCommande = (commande) => {
        setCommandes((prevCommandes) => [...prevCommandes, commande]);
    };

    return (
        <CommandeContext.Provider value={{ commandes, addCommande }}>
            {children}
        </CommandeContext.Provider>
    );
};
