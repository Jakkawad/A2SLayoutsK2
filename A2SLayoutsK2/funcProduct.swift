//
//  funcProduct.swift
//  A2SLayoutsK2
//
//  Created by admin on 5/27/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import Foundation

func getProductRating(numberRating:String) -> String {
    let productRatingURL = "https://www.all2sale.com/img/star"+numberRating+".png"
    
    return productRatingURL
}