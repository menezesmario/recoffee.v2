import React, { createContext, useState } from 'react'

import coffee1 from '../assets/coffee1.jpg'
import coffee2 from '../assets/coffee2.jpg'
import coffee3 from '../assets/coffee3.jpg'
import coffee4 from '../assets/coffee1.jpg'
import coffee5 from '../assets/coffee2.jpg'
import coffee6 from '../assets/coffee3.jpg'
import coffee7 from '../assets/coffee1.jpg'
import coffee8 from '../assets/coffee2.jpg'
import coffee9 from '../assets/coffee3.jpg'
import coffee10 from '../assets/coffee1.jpg'
import coffee11 from '../assets/coffee2.jpg'
import coffee12 from '../assets/coffee3.jpg'


export const ProductsContext = createContext();

const ProductsContextProvider = (props) => {
    const [products] = useState([
        {id: 1, name: 'Coffee 1', price: 28, image: coffee1, status: 'hot'},
        {id: 2, name: 'Coffee 2', price: 28, image: coffee2, status: 'hot'},
        {id: 3, name: 'Coffee 3', price: 28, image: coffee3, status: 'new'},
        {id: 4, name: 'Coffee 4', price: 28, image: coffee4, status: 'hot'},
        {id: 5, name: 'Coffee 5', price: 28, image: coffee5, status: 'new'},
        {id: 6, name: 'Coffee 6', price: 28, image: coffee6, status: 'hot'},
        {id: 7, name: 'Coffee 7', price: 28, image: coffee7, status: 'new'},
        {id: 8, name: 'Coffee 8', price: 28, image: coffee8, status: 'hot'},
        {id: 9, name: 'Coffee 9', price: 28, image: coffee9, status: 'hot'},
        {id: 10, name: 'Coffee 10', price: 28, image: coffee10, status: 'hot'},
        {id: 11, name: 'Coffee 11', price: 28, image: coffee11, status: 'hot'},
        {id: 12, name: 'Coffee 12', price: 28, image: coffee12, status: 'hot'}

    ])
    return (
        <ProductsContext.Provider value={{products: [...products]}}>
            {props.children}
        </ProductsContext.Provider>
    )
}

export default ProductsContextProvider;