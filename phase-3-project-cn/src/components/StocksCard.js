import React from "react";
import "./Stocks.css"


function StocksCard({stock}) {
  return (
<>
    <div className="stock-card">
      <p>{stock.symbol}</p>
      <p>{stock.price}</p>
      <p>{stock.sector}</p>
      <p>{stock.companyName}</p>
      <p>market cap: ${stock.marketCap}</p>
      <p>{stock.exchange}</p>
    </div>
    </>
  );
}

export default StocksCard;
