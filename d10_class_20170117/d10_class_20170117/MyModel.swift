//
//  MyModel.swift
//  d10_class_20170117
//
//  Created by 김재정 on 2017. 1. 18..
//  Copyright © 2017년 jjaygim. All rights reserved.
//

import Foundation

struct MyModel{
    var arrayGain : Array<[String:Any]> = []
    mutating func saveJsonArray(jsonData:Data){
        let json = try? JSONSerialization.jsonObject(with: jsonData, options: [])
        if let array=json as? [Any]{
            arrayGain=array as! Array<[String : Any]>  //뮤테이팅 스트럭트에 선언한 변수를 함수 안에서 바꿔줄 경우 필요
            
        }
        
    }
    func item(atIndex:Int)->[String:Any]{
        return arrayGain[atIndex]
        
    }
}


