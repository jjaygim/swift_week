//
//  d06_ArrayPractice.swift
//  d06_class
//
//  Created by 김재정 on 2017. 1. 10..
//  Copyright © 2017년 jjaygim. All rights reserved.
//

import Foundation

struct arrayPractice{
    func printArray(array:Array<Array<Int>>){
        for innerArray in array{
            for item in innerArray{
                print(item,terminator:" ")
            }
            print()
        }
    }
    
    func tempArray(lines:Int)->Array<Array<Int>>{
        var resultArray=Array<Array<Int>>()
        for _ in 1...lines{
            var tempArray=Array<Int>()
            for xLoop in 1...lines{
                tempArray.append(xLoop)
            }
            resultArray.append(tempArray)
        }
        return resultArray
    }
    
    func fillArray(line:Int)->Array<Array<Int>>{
        var num=1
        var result=Array<Array<Int>>()
        for i in 1...line{
            var fillArray=Array<Int>()
            for j in 1...i{
                fillArray.append(num)
                num+=1
            }
            //print()
            num+=(line-i)
            result.append(fillArray)
        }
        return result
    }
    
    func setBoolArray(line:Int)->Array<Array<Bool>>{
        let t:Bool=true
        let f:Bool=false
        var result=Array<Array<Bool>>()
        for i in 1...line{
            var boolArr=Array<Bool>()
            if i==line{boolArr+=[]}
        
            else{for j in 1...line-i{
                boolArr.append(f)
                }
            }
            for k in 1...i{
                boolArr.append(t)
            }
            //print()
            result.append(boolArr)
        }
        return result
        
    }
    
    func printArray(array:Array<Array<Bool>>, newChar:Character){
        for i in 0...array.count-1{
            for j in 0...array[i].count-1{
                if array[i][j]==false{
                    print(" ",terminator:"")
                }
                else {
                    print(newChar,terminator:"")
                }
            }
        }
        
    }
}

