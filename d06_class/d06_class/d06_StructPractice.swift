//
//  d06_StructPractice.swift
//  d06_class
//
//  Created by 김재정 on 2017. 1. 10..
//  Copyright © 2017년 jjaygim. All rights reserved.
//

import Foundation

struct InterestManager
{
    func getInterestRate(byDay:Int)->Double
    {
        if byDay>=90{return 0.005
        }
        else if byDay>=180{return 0.01}
        else if byDay>=365{return 0.02}
        else {return 0.056}
    }
    
    func calculateAmount(day:Int, amount:Int)->Double
    {
        let money=Double(amount)+Double(amount)*getInterestRate(byDay:day)
        return money
    }
}
