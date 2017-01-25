//
//  makeMagicSquare.swift
//  d06_class
//
//  Created by 김재정 on 2017. 1. 16..
//  Copyright © 2017년 jjaygim. All rights reserved.
//

import Foundation

struct magicSquare {

    func makeMagicSquare(row:Int)->Array<Array<Int>>{
        var mms = Array<Array<Int>>()
        let ms = Array(repeating: 0, count: row)
        
        for i in 0..<row {mms.append(ms)}
        
        var count = 1
        var ii = row-1
        var jj = row/2
        
        mms[ii][jj] = count
        
        for i in 1..<row*row
        {
            count += 1
            ii += 1
            jj -= 1
            
            
            if jj<1 {jj += row}
            
            if mms[ii%row][jj%row] != 0 {ii -= 2; jj += 1}
            
            mms[ii%row][jj%row] = count
            
        }
        
        return mms

    }


    func printMagicSquare(pms: Array<Array<Int>>){
        for i in pms {
            for j in i {
                print(j,terminator:" ")
            }
            print()
        }
    }


}



