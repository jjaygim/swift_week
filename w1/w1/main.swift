//
//  main.swift
//  w1
//
//  Created by 김재정 on 2017. 1. 8..
//  Copyright © 2017년 jjaygim. All rights reserved.
//

import Foundation

print("Hello, World!")
/*
func printDiamond(line:Int)
{
    for i in 1...line
    {
        if i<(line-i)/2+1{
            for j in stride(from:(line-i)/2,to:1,by:-1)
            {
                print(" ",terminator:"")
            }
            for j in stride(from:1,to:line-(line-i),by:2)
            {
                print("*",terminator:"")
            }
        }
        print()
    }
}
printDiamond(line:7)
*/

/*
func factorial(n:Int)->Int
{
    var result=1
    for i in 1...n
    {
        result*=i
    }
    return result
}
print(factorial(n:4))
*/

func facre(n:Int)->Int{
    if n<1{
        return 1
    }
    return n*facre(n:n-1)
}
print(facre(n:4))


