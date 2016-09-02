//
//  Extensions.swift
//  Extensions
//
//  Created by susan lovaglio on 9/1/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

extension String{
    
    func whisper() -> String{
        return self.lowercaseString
    }
    
    func shout() -> String{
        return self.uppercaseString
    }
    
    var pigLatin: String {
        
        let wordArray = self.componentsSeparatedByString(" ")
        var pigString = ""
        
        for word in wordArray{
            
            if wordArray.count == 1{
                
                return self
                
            }else{
                var charArray = word.characters
                
                let first = charArray.popFirst()
                charArray.append(first!)
                
                if word == wordArray.last{
                    
                    pigString = pigString + "\(String(charArray).lowercaseString)ay"
                }else{
                    
                    pigString = pigString + "\(String(charArray).lowercaseString)ay "
                }
            }
        }
        return pigString.capitalizedString
    }
    
    var points: Int{
        
        var point = 0
        let vowels = ["a","e","i","o","u", "y"]
        let cons = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
        
        if self == ""{
            
            return 0
        }else{
            
            for letter in self.characters{
                
                if vowels.contains(String(letter).lowercaseString){
                    point += 2
                }else if cons.contains(String(letter).lowercaseString){
                    point += 1
                }
            }
        }
        return point
    }
    
    var unicornLevel: String{
        
        var unicorns = ""
        
        for letter in self.characters{
            
            if letter != " "{
                
                unicorns = unicorns + "🦄"
            }
        }
        return unicorns
    }
}

extension Int{
    
    func half() -> Int{
        
        return self / 2
    }
    
    func isDivisibleBy(int: Int)-> Bool{
        
        return self % int == 0
    }
    
    var squared: Int{
        
        return self * self
    }
    
    var halved: Int{
        
        return self / 2
    }
}













