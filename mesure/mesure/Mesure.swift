//
//  Mesure.swift
//  mesureTerminal
//
//  Created by ADBAIBI ISMAIL on 27/10/2021.
// 

import Foundation
struct Mesure {
    
    var a :Double
    var b :String
 //ok
}
//test
extension Mesure{
    /*
     *      extention de la struct Mesure qui va permetre de changer uniter
     *
     *
     *
     */
    
    
    var Km : Double { return a  }
    var Hm : Double { return a.self * 10 }
    var Dam: Double { return a.self * 100 }
    var m  : Double { return a.self * 1000 }
    var dm : Double { return a.self * 10000 }
    var cm : Double { return a.self * 100000 }
    var mm : Double { return a.self * 1000000 }
    init(_ an:Double,_ bn:String)
    {
        
        self.a=an
        self.b=bn
        self=self.convert()
    }
    func convert() -> Mesure
    {   let dico:Dictionary<String,Double>=["Km":1.0,"Hm":10.0,"Dam":100.0,"m":1000.0,"dm":10000.0,"cm":100000.0,"mm":1000000.0]
        return Mesure(a: a.self/dico[b.self]!, b: "Km")
    }
    func toString()-> String
    {
            return String(self.a)+""+self.b
    }
    
    
}
