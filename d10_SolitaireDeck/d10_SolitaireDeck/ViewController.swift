//
//  ViewController.swift
//  d10_SolitaireDeck
//
//  Created by 김재정 on 2017. 2. 12..
//  Copyright © 2017년 jjaygim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var cardDeck = SolitaireDeck()


    override func viewDidLoad() {
        super.viewDidLoad()
        veiwCardDeck()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func veiwCardDeck() {
        
        var PointX : Int
        var PointY : Int
        let cardArr = cardDeck.makeCardDeck()
        let shuffleCard = cardDeck.shuffledCardDeck(deck: cardArr)
        var restCard : String
        
        PointX = 26 - 140
        for i in 0...6 {
            PointY = 100
            PointX += 140
            for j in 0...i{
                let cardImage = UIImageView(frame : CGRect(x: PointX, y: PointY, width: 130, height: 150))
                cardImage.image = UIImage(named: "\(shuffleCard.0[i][j])")
                self.view.addSubview(cardImage)
                PointY += 40
                
            }
            
        }
        
        PointX = 26
        PointY = 500
        for i in 0...23 {
            restCard = shuffleCard.1[i]
            
            let cardImage = UIImageView(frame : CGRect(x: PointX, y: PointY, width: 130, height: 150))
            cardImage.image = UIImage(named: "\(restCard)")
            self.view.addSubview(cardImage)
            PointX += 24
        }
    }



}











/*
 var subview = UIView(frame: CGRect(x: 100, y: 100, width: 200, height: 100))  //코드로 뷰를 만들 때 씨지렉트  //유아이킷 카탈로그 참고
 subview.backgroundColor = UIColor.red
 self.view.addSubview(subview)  //셀프.뷰는 뷰컨티롤러(무조건 빈 뷰(흰화면))셀프 생략 가능 //괄호 안에는 모든 화면의 객체 인스턴스들은 유아이뷰 상속받았기 때문에 넣을 수 있음  //인스턴스만 만들면 안보임 뷰에 추가를 해야함 //나중에 그린게 위로 올라옴  //인서트서브뷰는 순서 끼워넣을 수 있음
 
 //self.view.frame = CGRect()  수퍼뷰 좌표 바꿀 수 있음
 self.view.backgroundColor = UIColor.gray  //상태바 투명 20포인트, 네비는 44포인트
 
 
 var subview2 = UIView(frame: CGRect(x: 150, y: 100, width: 200, height: 100))
 subview2.backgroundColor = UIColor.blue
 subview.addSubview(subview2)
 
 var subview3 = UIView(frame: CGRect(x: 100, y: 150, width: 200, height: 100))
 subview3.backgroundColor = UIColor.green
 view.addSubview(subview3)
 
 let imageView = UIImageView(frame: CGRect(x: 150, y: 150, width: 150, height: 100))
 imageView.image = UIImage(named: "sA")  //유아이이미지는 이미지파일을 불러오기 위해 필요한 클래스  //클래스 기능이 세분화되어 있음
 self.view.addSubview(imageView)
 
 
 var card_decks:Array<String>
 
 for i in 1...52{
 card_decks.append(i)  //"이미지.png" 추가
 }
 
 var x = 26
 var y = 100
 
 
 for i in 1...7{
 for j in 1...i{
 var cardView = UIImageView(frame: CGRect(x: x, y: y, width: 130, height: 150))
 cardView.image = UIImage(named: card_decks[j])  //랜덤
 self.view.addSubview(cardView)
 
 //append
 //self.view.addSubview(cardView)
 y += 40
 
 }
 x += 140  //띄어쓰기
 }
 
 for i in 1...24{
 var cardView = UIImageView(frame: CGRect(x: x, y: 500, width: 130, height: 150))
 cardView.image = UIImage(named: card_decks[i])  //랜덤
 
 //append
 //self.view.addSubview(cardView)
 x += 24
 
 }
 
 self.view.addSubview(cardView)
 
 
 
 
 var cardSet:Set<Int>=[]
 
 /*
 for index in 0..<52{
 //cardSet.insert(index)
 cardSet.insert(Int(arc4random_uniform(52))
 }
 cardSet.count
 */
 
 
 while(cardSet.count<52){
 cardSet.insert(Int(arc4random_uniform(52))
 }
 cardSet.count
 
 var mytArray:Array<Int>=[]
 for index in 0..<3{
 let value=cardSet.index
 //myArrya.append(cardSet.remove(cardSet.first))
 myArrya.append(cardSet.popFirst())
 }
 
 myArray  //플레이그라운드에서 값이 보임
 
 */

