//
//  FirstViewController.swift
//  d10_class_20170117
//
//  Created by 김재정 on 2017. 1. 17..
//  Copyright © 2017년 jjaygim. All rights reserved.
//

import UIKit

class ABox {
    var OtherBox:ABox?=nil
    
    
}

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let jsonData = "[{\"title\":\"\u{c0c8}\u{b85c}\",\"image\":\"01.jpg\",\"content\":\"\u{c601}\u{d654}\u{bcf4}\u{b7ec}\u{ac00}\u{c790}\",\"comments\":[{\"id\":1,\"user\":\"jobs\",\"comment\":\"apple\"},{\"id\":4,\"user\":\"cook\",\"comment\":\"apple\"}]}, {\"title\":\"\u{d1a0}\u{c774}\u{c2a4}\u{d1a0}\u{b9ac}\",\"image\":\"02.jpg\", \"content\":\"Pixar\",\"comments\":[]}, {\"title\":\"ToyStory\",\"image\":\"03.jpg\",\"content\":\"\u{c6b0}\u{b514}\u{ac00}\u{cd5c}\u{ace0}\",\"comments\":[{\"id\":2,\"user\":\"bill\",\"comment\":\"Microsoft\"}]}, {\"title\":\"\u{adf9}\u{c7a5}\u{c740}\",\"image\":\"04.jpg\",\"content\":\"\u{c5b4}\u{b514}\u{b85c}\",\"comments\":[{\"id\":4,\"user\":\"cook\",\"comment\":\"apple\"}]}]".data(using: .utf8)
            
        var modelCome=MyModel()
        modelCome.saveJsonArray(jsonData: jsonData!)
        modelCome.item(atIndex: 0)
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        if segue.identifier == "노랑한테"{  //세그웨이이름비교하는것
            let yelloVC:YellowViewController = segue.destination as! YellowViewController
            //yelloVC.titleLabel.text="여기보세요"  //뷰컨트롤러는 만들어졌으나 아무것도 안들어 있음, 타이틀라벨이 준비가 안됨, 뷰아울렛?에 직접 못넣어줌 그래서 옐로뷰콘에 변수(보통 어레이로 여러값 담음) 만들어주고 거기에 담음
            //yelloVC.titleString="여기보세요"
            yelloVC.dataDictionary=["title":"이제 사전이야"]
            
            
        }
    }//세그웨이를 준비하는 단계에서 불림

   
    //세그웨이가 하는 일(네비 있을 경우 푸쉬 팝)
    @IBAction func nextButtonTouched(_ sender: Any) {
        let yellowVC:YellowViewController = storyboard?.instantiateViewController(withIdentifier: "YellowVC") as! YellowViewController  //as?는 리턴타입이 옵셔널일 경우에만 가능
        
        yellowVC.dataDictionary=["a":"여보세요"]
        
        //self.present(yellowVC, animated: true, completion: nil)  //모달뷰
        
        //self.navigationController?.pushViewController(yellowVC, animated: true)  //옵셔널체이닝
        
        if let navigation = self.navigationController{
            navigation.pushViewController(yellowVC, animated: true)
        }
        else{
            self.present(yellowVC, animated: true, completion: nil)
        }
    }
    
}




