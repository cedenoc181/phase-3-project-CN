import { Routes, Route, Link } from "react-router-dom";
// import {useState, useEffect} from 'react';
import Home from "./Home"
import Stocks from "./Stocks"
import News from "./News"
import Search from "./Search"
import Account from "./Account"
import "./App.css"

function App() {
  return (
    <div className="App">
 
 <nav className="links">
 <Search />
        <Link className="link" to="/">
         Home
        </Link>

        <Link className="link" to="/stocks">
         Stocks
        </Link>

        <Link className="link" to="/News">
         News
        </Link>

        <Link className="link" to="/Account">
          Account
        </Link>

        {/* <Link className="Link" to="/GovTrades">
          Gov Trades
        </Link> */}
        
      </nav>
      <Routes>
        <Route path="/" element={<Home/> } />
         <Route path="/stocks" element={<Stocks/> } />
        <Route path="/news" element={<News/>} />
        <Route path="/account" element={<Account />} />
       {/* <Route path="nav" element={<GovTrades />} /> */}
        {/* {<Route path="nav" element={null} /> */} 
      </Routes>



      </div>

   




  );
}

export default App;
