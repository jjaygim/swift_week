//
//  main.swift
//  d06_class
//
//  Created by 김재정 on 2017. 1. 10..
//  Copyright © 2017년 jjaygim. All rights reserved.
//

import Foundation

print("Hello, World!")

func testInterest(unitDay:Int)
{
    let intPer=InterestManager()
    let money=1000000
    for i in stride(from:0,to:365,by:unitDay)
    {
        print(intPer.calculateAmount(day: i, amount: money))
    }
}

testInterest(unitDay:1)
testInterest(unitDay:100)

let arrPra=arrayPractice()
arrPra.printArray(array:arrPra.tempArray(lines:5))
//arrayPractice.printArray(array:arrayPractice.tempArray(lines:5))

let boolA=arrayPractice()
print(boolA.setBoolArray(line: 5))
boolA.printArray(array:boolA.setBoolArray(line:5), newChar: "$")

