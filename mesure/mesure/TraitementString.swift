//
//  TraitementString.swift
//  mesureTerminal
//
//  Created by Spart on 28/10/2021.
//
 //test
//ok
import Foundation
//test
extension String{
    
    func isNum() -> Bool
    {
        if (!self.isEmpty)
        {
            if(Double(self) != nil)
            {
                return true
            }else
            {
                    return false
            }
            
        }else
        {
            return false
        }
    }
}

class TraitementString
{

    static func convertion(_ a:String)->Mesure    {
        var mesure:Mesure
        var valeur:String?=""
        var uniter:String?=""
        
        for val:Character in a {
            if val.isNumber || val=="." || val=="-" || val=="e"{
                valeur!+=String(val)
            }
            if val.isLetter && val != "e"
            {
                uniter!+=String(val)
            }
            
        }
        switch (valeur!.isEmpty || uniter!.isEmpty){
        case false:
            
                if (Double(String(valeur!) ) != nil)
                {
                    mesure = Mesure(Double(String(valeur!))! ,  uniter!)
                    return mesure
                }else
                {return Mesure(a: 0.0, b: "Km")}
            
        case true:
            return Mesure(a: 0.0, b: "Km")
        }
        
            
      
    }
    
}

