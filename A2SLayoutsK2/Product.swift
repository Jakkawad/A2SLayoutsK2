//
//  Product.swift
//  A2SLayoutsK2
//
//  Created by admin on 5/26/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import Foundation

class Product {
    var productName:String
    var productId:String
    var productPrice:String
    var imageProduct:String
    var productRating:String
    var storeId:String
    
    init(_productName:String, _productId:String, _productPrice:String, _imageProduct:String, _productRatig:String, _storeId:String) {
        self.productName = _productName
        self.productId = _productId
        self.productPrice = _productPrice
        self.imageProduct = _imageProduct
        self.productRating = _productRatig
        self.storeId = _storeId
    }
}