//
//  dummyData.swift
//  A2SLayoutsK1
//
//  Created by Jakkawad Chaiplee on 5/16/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit


func dummyImage(sizeDummy:String) -> String {
    let dummyImageURL = "http://placehold.it/"+sizeDummy
    //let dummyImageURL = NSURL(string: "http://placehold.it/"+sizeDummy)
    return dummyImageURL
}

func dummyText() -> String {
    let dummyTextData = "Seguridad Arnes Andador Nino Bebe Primeros Pasos Paseo Aprendizaje AssistantSeguridad Arnes Andador Nino Bebe Primeros Pasos Paseo Aprendizaje Assistant"
    return dummyTextData
}

func dummyPrice() -> String {
    let dummyPriceData = "191.57"
    return dummyPriceData
}