import React from "react";
import "./Home.css";

function Home() {
  return (
    <body>
      <div className="Home">
        <div className="list">
          <p className="display-watch">Watchlist</p>
          <p className="display-ownership">Ownership</p>
        </div>
        <div className="watch-list"></div>
            <p className="symbol"></p>
            <p className="price"></p>
            <p className="name"></p>
      </div>

      <div className="chart">

      </div>
    </body>
  );
}

export default Home;
