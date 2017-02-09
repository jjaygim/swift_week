//
//  ViewController.swift
//  d10_ShuffleDeck
//
//  Created by 김재정 on 2017. 2. 9..
//  Copyright © 2017년 jjaygim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomButton = UIButton(frame: CGRect(x: 140, y: 100, width: 100, height: 70))
    
    enum CardFace:String {
        case None, diamond, heart, spade, clover
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        randomButton.setTitle("Random", for: .normal)
        randomButton.setTitleColor(UIColor.white,for: .normal)
        randomButton.backgroundColor=UIColor.black
        randomButton.addTarget(self, action: #selector(buttonTouched(_:)), for: .touchUpInside)
        self.view.addSubview(randomButton)
        

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func shuffleDeck()->(face:CardFace, number:String){
        let randomShape = Int(arc4random_uniform(4))
        var randomNum = String(Int(arc4random_uniform(13))+1)
        var temp : CardFace = CardFace.None
        
        switch randomShape {
        case 0 :
            temp = .diamond
        case 1:
            temp = .heart
        case 2:
            temp = .spade
        case 3:
            temp = .clover
        default : break
        }
        
        switch randomNum {
        case "1":
            randomNum = "A"
        case "11" :
            randomNum = "J"
        case "12" :
            randomNum = "Q"
        case "13" :
            randomNum = "K"
        default : break
        }
        return (temp, randomNum)
    }
    
    func buttonTouched(_ sender:UIButton) {
        let cardVC:CardViewController = storyboard?.instantiateViewController(withIdentifier: "Card") as! CardViewController
        
        
        
        if let navigation = self.navigationController{navigation.pushViewController(cardVC, animated: true)
        }
        else {
            self.present(cardVC, animated: true, completion: nil)
        }
        
        
        cardVC.shuffleData = shuffleDeck()
        
    }



}

