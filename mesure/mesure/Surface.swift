//
//  Mesure.swift
//  mesureTerminal
//
//  Created by ADBAIBI ISMAIL on 27/10/2021.
//

import Foundation
struct Surface {
    
    var a :Double
    var b :String
 //ok
}
//test
extension Surface{
    /*
     *      extention de la struct Mesure qui va permetre de changer uniter
     *
     *
     *
     */
    
    
    var km2 : Double { return a/1000000  }
    var hm2 : Double { return a.self / 10000 }
    var dam2: Double { return a.self / 100 }
    var m2  : Double { return a }
    var dm2 : Double { return a.self * 100 }
    var cm2 : Double { return a.self * 10000 }
    var mm2 : Double { return a.self * 1000000 }
    init(_ an:Double,_ bn:String)
    {
        
        self.a=an
        self.b=bn
        self=self.convert()
    }
    func convert() -> Surface
    {   let dico:Dictionary<String,Double>=["km2":0.000001,"hm2":0.0001,"dam2":0.01,"m2":1.0,"dm2":100.0,"cm2":10000.0,"mm2":1000000.0]
        return Surface(a: a.self/dico[b.self]!, b: "m")
    }
    func toString()-> String
    {
            return String(self.a)+""+self.b
    }
    
    
}
