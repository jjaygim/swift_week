//
//  MyModel.swift
//  d08_MVC
//
//  Created by 김재정 on 2017. 2. 4..
//  Copyright © 2017년 jjaygim. All rights reserved.
//

import Foundation


struct MyModel {
    
    var makeArray:Array<[String:Any]>  //변수 명사
    
    mutating func makeJsonArray(jsonData:Data){  //동사 함수
        let json = try? JSONSerialization.jsonObject(with:jsonData)
        if let beArray = json as? Array<[String:Any]> {
            makeArray = json as! Array<[String : Any]>
        }
    }
    
    func item(atIndex:Int)->[String:Any]{
        return makeArray[atIndex]
    }
}

