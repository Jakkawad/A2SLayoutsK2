//
//  Salesman.swift
//  A2SLayoutsK2
//
//  Created by admin on 5/26/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import Foundation
/*
struct Salesman {
    var sName:String = ""
    var dSalary:Double = 0
    var sCompany:String = ""
    var sPosition:String = ""
}
*/
struct SalaryMan {
    var sName:String = ""
    var dSalary:Double = 0
    var sCompany:String = ""
    var sPosition:String = ""
    
    init() {
        
    }
    
    init(sGetCompany:String) {
        sCompany = sGetCompany
    }
    
    enum Position:String {
        case Officer = "Officer"
        case Secretary = "Secretary"
        case Ceo = "CEO"
    }
    
    func getSalarybyPosition(myPosition:String) -> Double {
        var dSalary:Double = 0
        if let checkSalary = Position(rawValue: myPosition) {
            switch checkSalary {
            case .Officer:dSalary = 22000
            case .Secretary:dSalary = 25000
            case .Ceo:dSalary = 100000
            default:dSalary = 0
            }
        }
        return dSalary
    }
    func getDetail() {
        print(sName)
        print(sCompany)
        print(sPosition)
        print(dSalary)
    }
}
/*
 // How to Call //
 
 var myJohn = SalaryMan(sGetCompany: "Mango")
 myJohn.sName = "Mr. John"
 myJohn.sPosition = "Officer"
 myJohn.dSalary = myJohn.getSalarybyPosition(myJohn.sPosition)
 myJohn.getDetail()
*/