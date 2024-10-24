import { StrictMode } from 'react'
import { createRoot } from 'react-dom/client'
import App from './App.jsx'
import './index.css'
import 'bootstrap/dist/css/bootstrap.min.css';
import 'bootstrap/dist/js/bootstrap.min.js'
import { ProductProvider } from './Admin/ProductContext.jsx';
import { CartProvider } from './Panier_Etudiant/Achats.jsx';
import { CommandeProvider } from './Historique/CommandeContext.jsx';
import { PanierProvider } from './Employe/PanierContexte.jsx';

createRoot(document.getElementById('root')).render(
  <StrictMode>
    <PanierProvider>
      <CommandeProvider>
        <ProductProvider>
          <CartProvider>
            <App />
          </CartProvider>
        </ProductProvider>
      </CommandeProvider>
    </PanierProvider>
  </StrictMode>,
)
