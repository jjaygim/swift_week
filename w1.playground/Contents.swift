//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

print("정사각형")
func printXY(max:Int)
{
    for i in 1...max
    {
        for j in 1...max
        {
            print(j,terminator:"")
        }
        print()
    }
}
printXY(max:5)
print()



print("삼각형")
func printTree(line:Int)
{
    for i in 1...line
    {
        for j in 1...i
        {
            print("*",terminator:"")
        }
        print()
    }
}
printTree(line:5)
print()


/*
print("삼각형반전")
func printTree2(line:Int)
{
    for i in 1...line
    {
        for j in 1...line-i
        {
            print(" ",terminator:"")
        }
        for k in 1...i
        {
            print("*",terminator:"")
        }
        print()
    }
}
printTree2(line:5)
print()
*/


print("삼각형반전")
func printTree2(line:Int)
{
    for i in 1...line
    {
        if i==line{print("",terminator:"")}
        else{
            for j in 1...line-i
            {
                print(" ",terminator:"")
            }
        }
        for k in 1...i
        {
            print("*",terminator:"")
        }
        print()
    }
}
printTree2(line:5)
print()




print("삼각형숫자")
func printNumbers(lines:Int)
{
    var count=1
    for i in 1...lines
    {
        for j in 1...i
        {
            print(count,terminator:"")
            count+=1
        }
        print()
    }
}
printNumbers(lines:5)
print()



print("columns")
let max=25
func printSquare(columns:Int)
{
    var count=1
    for i in 1...max/columns+1
    {
        for j in 1...columns
        {
            if count<=max
            {
                print(count,terminator:"")
                count+=1
            }
        }
        print()
    }

}
printSquare(columns: 3)
print()



print("짝수거꾸로")
func printReverse(lines:Int)
{
    var count=1
    for i in 1...lines
    {
        if i%2==0
        {
            count+=lines-1
            for j in 1...lines
            {
                print(count,terminator:"")
                if j<lines{
                    count-=1
                }
            }
            count+=lines
        }
        else
        {
            for k in 1...lines
            {
                print(count,terminator:"")
                count+=1
            }
        }
        print()
    }
}
printReverse(lines:5)
print()



print("fizzbuzz")
func fizzbuzz(lines:Int)->Array<String>
{
    var result:Array<String>=[]
    for i in 1...lines
    {
        if (i%3==0 && i%5==0){result+=["fizzbuzz"]}
        else if i%3==0{result+=["fizz"]}
        else if i%5==0{result+=["buzz"]}
        else {result.append("\(i)")}
    }
    return result
}
print(fizzbuzz(lines:15))
print()



print("다이아")
/*
func printDiamond(line:Int)
{
    for i in 1...line
    {
        for j in 1...(line-i)/2
        {
            print(" ",terminator:"")
        }
        for j in stride(from:1,to:line,by:2)
        {
            print("*",terminator:"")
        }
        print()
    }
}
printDiamond(line:7)
print()


print("다이아")
func printDiamond(line:Int)
{
    for i in 1...line
    {
        if i<(line-i)/2+1{
            for j in stride(from:(line-i)/2,to:1,by:-1)
            {
                print(" ",terminator:"")
            }
            for j in stride(from:1,to:line,by:2)
            {
                print("*",terminator:"")
            }
        }
        print()
    }
}
printDiamond(line:7)
print()



func printDiamond(line:Int)
{
    for i in 1...line
    {
        if i<(line-i)/2+1{
            for j in stride(from:(line-i)/2,to:0,by:-1)
            {
                print(" ",terminator:"")
            }
            for j in stride(from:i,to:line,by:2)
            {
                print("*",terminator:"")
            }
        }
        else{
            for j in stride(from:1,to:line-(line-i),by:1)
            {
                print(" ",terminator:"")
            }
            for j in stride(from:(line-i)/2,to:0,by:-2)
            {
                print("*",terminator:"")
            }

        }
        print()
    }
}
printDiamond(line:7)
print()


print("스트링으로")
func printS(line:Int){
    for i in 1...line{
        var result=""
        if i<line/2+1{
            for j in stride(from:(line-i)/2,to:0,by:-1){
                result += " "
            }
            
            for j in stride(from:1,to:line,by:2){
                result += "*"
            }
        }
        else {
            for j in stride(from:0,to:(line-i)/2,by:1){
                result += " "
            }
            
            for j in stride(from:line,to:1,by:-2){
                result += "*"
            }
        }
        print (result)
    }
}
printS(line:7)
print()
*/

print("변수")
func printS(line:Int){
    for i in 1...line{
        var result=""
        if i<line/2+1{
            let inc=i*2-1
            for j in stride(from:(line-i)/2,to:0,by:-1){
                result += " "
            }
            
            for j in 1...inc{
                result += "*"
            }
        }
        else {
            for j in stride(from:0,to:(line-i)/2,by:1){
                result += " "
            }
            
            for j in stride(from:line,to:1,by:-2){
                result += "*"
            }
        }
        print (result)
    }
}
printS(line:7)
print()



print("팩토리얼")
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
print()









