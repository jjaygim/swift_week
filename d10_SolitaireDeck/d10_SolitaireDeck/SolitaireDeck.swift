//
//  SolitaireDeck.swift
//  d10_SolitaireDeck
//
//  Created by 김재정 on 2017. 2. 12..
//  Copyright © 2017년 jjaygim. All rights reserved.
//

import Foundation

struct SolitaireDeck {
    
    var stackArray : Array<Array<String>> = []
    var restArray : Array<String> = []
    
    
    mutating func shuffledCardDeck(deck:Array<String>) -> (Array<Array<String>>, Array<String>) {
        
        var mixCard : Array<String> = []
        
        for _ in 0..<deck.count {
            let ranNum : Int = Int(arc4random_uniform(UInt32(deck.count)))
            mixCard.append(deck[ranNum])
        }
        
        
        for i in 1...7 {
            var tempArr : Array<String> = []
            
            for j in 1...i {
                tempArr.append(mixCard[j])
            }
            stackArray.append(tempArr)
        }
        
        for i in 1...24 {
            restArray.append(mixCard[i])
        }
        
        return (stackArray , restArray)
        
    }
    
    
    func makeCardDeck() -> Array<String> {
        var shapeStr : String = ""
        var numberStr : String = ""
        var cardDeck : Array<String> = []
        
        for shape in 1...4 {
            
            switch shape {
            case 1:
                shapeStr = "c"
            case 2:
                shapeStr = "d"
            case 3:
                shapeStr = "h"
            case 4:
                shapeStr = "s"
            default:
                break;
            }
            for number in 1...13 {
                numberStr = String(number)
                
                switch number {
                case 1:
                    numberStr = "A"
                case 11:
                    numberStr = "J"
                case 12:
                    numberStr = "Q"
                case 13:
                    numberStr = "K"
                default:
                    break;
                }
                cardDeck.append(shapeStr + numberStr)
            }
        }
        return cardDeck
    }
    
}
