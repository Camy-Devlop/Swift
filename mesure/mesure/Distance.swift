//
//  Mesure.swift
//  mesureTerminal
//
//  Created by ADBAIBI ISMAIL on 27/10/2021.
// 

import Foundation
struct Distance {
    
    var a :Double
    var b :String
 //ok
}
//test
extension Distance{
    /*
     *      extention de la struct Mesure qui va permetre de changer uniter
     *
     *
     *
     */
    
    
    var km : Double { return a/1000  }
    var hm : Double { return a.self / 100 }
    var dam: Double { return a.self / 10 }
    var m  : Double { return a }
    var dm : Double { return a.self * 10 }
    var cm : Double { return a.self * 100 }
    var mm : Double { return a.self * 1000 }
    init(_ an:Double,_ bn:String)
    {
        
        self.a=an
        self.b=bn
        self=self.convert()
    }
    func convert() -> Distance
    {   let dico:Dictionary<String,Double>=["km":0.001,"hm":0.01,"dam":0.1,"m":1.0,"dm":10.0,"cm":100.0,"mm":1000.0]
        return Distance(a: a.self/dico[b.self]!, b: "m")
    }
    func toString()-> String
    {
            return String(self.a)+""+self.b
    }
    
    
}
