//
//  Mesure.swift
//  mesureTerminal
//
//  Created by ADBAIBI ISMAIL on 27/10/2021.
//

import Foundation
struct Volume {
    
    var a :Double
    var b :String
 //ok
}
//test
extension Volume{
    /*
     *      extention de la struct Mesure qui va permetre de changer uniter
     *
     *
     *
     */
    
    
    var km3 : Double { return a/1000000000  }
    var hm3 : Double { return a.self / 1000000 }
    var dam3: Double { return a.self / 1000 }
    var m3  : Double { return a }
    var dm3 : Double { return a.self * 1000 }
    var cm3 : Double { return a.self * 1000000 }
    var mm3 : Double { return a.self * 1000000000 }
    init(_ an:Double,_ bn:String)
    {
        
        self.a=an
        self.b=bn
        self=self.convert()
    }
    func convert() -> Volume
    {   let dico:Dictionary<String,Double>=["km3":0.000000001,"hm3":0.000001,"dam3":0.001,"m3":1.0,"dm3":1000.0,"cm3":1000000.0,"mm3":1000000000.0]
        return Volume(a: a.self/dico[b.self]!, b: "m")
    }
    func toString()-> String
    {
            return String(self.a)+""+self.b
    }
    
    
}
