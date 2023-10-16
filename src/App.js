import React from 'react';
import './App.css';
import NFTMinter from "./components/minter";

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <h1>NFT Minter</h1>
      </header>
      <main>
        <NFTMinter />
      </main>
    </div>
  );
}

export default App;
