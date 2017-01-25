//
//  MyModel.swift
//  d10_class_20170117
//
//  Created by 김재정 on 2017. 1. 17..
//  Copyright © 2017년 jjaygim. All rights reserved.
//

import Foundation

struct MyModel_test{
    var jsonArray:Array<[String:Any]>
    
    mutating func makeJSONArray(jsonData:Data){
        //try?는 에러처리 잡아내기 위함(리턴값dp 쓰로우가 있어서 잡아줘야 할 때 필요)
        let json = try? JSONSerialization.jsonObject(with: jsonData, options: [])
        if let array=json as? Array<[String:Any]>{
            jsonArray=array
        }
        //jsonArray=
    }
    func item(atIndex:Int)->[String:Any]{  //[]딕셔너리 ["키":값]
        return jsonArray[atIndex]
    }
}



/*if let array=JSONSerialization.jsonObject(with: jsonData, options: []) as? Array<[String:Any]>{
 
 }*/

//if let dic=json as? [String:Any]{
//return jsonArray[atIndex]
//}

//jsonArray=try!
