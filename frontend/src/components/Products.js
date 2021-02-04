import React, {useContext} from "react"
import {ProductsContext} from "../Global/ProductsContext"

const Products = () => {
    const {products} = useContext(ProductsContext)
    return (
        <div className="products">
            {products.map((product) => (
                <div className="product" key={product.id}>
                    <div className="product-image">
                        <img src={product.image} alt="not found" />
                    </div>
                    <div className="product-details">
                        <div className="product-name">
                            {product.name}
                        </div>
                        <div className="product-price">
                            R${product.price},00
                        </div>
                    </div>                       

                    <div className="add-to-cart">add to cart</div>
                    {product.status === 'hot' ? <div className="hot">Oferta</div>: ''}
                    {product.status === 'new' ? <div className="new">Novo</div>: ''}
                </div>
            ))}
        </div>
    )
}

export default Products;