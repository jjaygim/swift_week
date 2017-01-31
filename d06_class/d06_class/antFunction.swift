//
//  antSequence.swift
//  d06_class
//
//  Created by 김재정 on 2017. 1. 25..
//  Copyright © 2017년 jjaygim. All rights reserved.
//

import Foundation

struct ant {
    
    
    func antfunction(inputArray:Array<Int>)->Array<Int> {
        var result:Array<Int> = []
        
        
        for i in inputArray {
            var count = 1
            
            
            if inputArray[i] != inputArray[i+1] {
                result.append(i)
            }
            
            count += 1
            
            
            
        }
        
        
        return result
    }
    
    
}
