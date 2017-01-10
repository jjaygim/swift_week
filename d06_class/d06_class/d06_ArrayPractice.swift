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
}

