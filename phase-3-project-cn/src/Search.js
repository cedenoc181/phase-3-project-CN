import React from 'react'
import "./Search.css"

function Search() {
  return (
    <div>
        <form>
            <input 
            id="nav-search"
            type="text" 
            placeholder="search stocks, news ...etc"/>
        </form>
    </div>
  )
}

export default Search