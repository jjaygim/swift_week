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

print("unitDay:1 ------------------------------")
testInterest(unitDay:1)
print()

print("unitDay:100 ------------------------------")
testInterest(unitDay:100)
print()

print("tempArray ------------------------------")
let arrPra=arrayPractice()
arrPra.printArray(array:arrPra.tempArray(lines:5))
//arrayPractice.printArray(array:arrayPractice.tempArray(lines:5))
print()


let boolA=arrayPractice()
print(boolA.setBoolArray(line: 5))
print()
print("boolArray ------------------------------")
boolA.printArray(array:boolA.setBoolArray(line:5), newChar: "$")
print()

//D07_20170111


print("??? ------------------------------")
let fileM=FileManager()
var result:[String]=[]
do{
    //fileM.subpaths(atPath: "/Library/Desktop Pictures")
    result=try fileM.contentsOfDirectory(atPath: "/Library/Desktop Pictures")
    //fileM.enumerator(atPath: "/Library/Desktop Pictures")
}
catch let error as NSError{
    print("에러: /(error)")
}

print(result)
//"/Library/Desktop Pictures"
print()



let origin=CGPoint(x:0,y:0)
var other=origin
other.x += 10
var another=origin
another.y += 5

func add3(pointA: inout CGPoint){
    
}

print("makeMagicSquare ------------------------------")
let mSquare=magicSquare()
mSquare.printMagicSquare(pms:mSquare.makeMagicSquare(row:5))
print()
