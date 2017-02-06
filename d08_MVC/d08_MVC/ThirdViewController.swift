//
//  ThirdViewController.swift
//  d08_MVC
//
//  Created by 김재정 on 2017. 2. 4..
//  Copyright © 2017년 jjaygim. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    var myModel = MyModel(makeArray:[])
    //마이모델에서 초기화되지 않은 변수가 있으면 인스턴스를 만들 때 같이 초기값으 넣어줘야 함
    
    let jsonData = "[{\"title\":\"\u{c0c8}\u{b85c}\",\"image\":\"01.jpg\",\"content\":\"\u{c601}\u{d654}\u{bcf4}\u{b7ec}\u{ac00}\u{c790}\",\"comments\":[{\"id\":1,\"user\":\"jobs\",\"comment\":\"apple\"},{\"id\":4,\"user\":\"cook\",\"comment\":\"apple\"}]}, {\"title\":\"\u{d1a0}\u{c774}\u{c2a4}\u{d1a0}\u{b9ac}\",\"image\":\"02.jpg\", \"content\":\"Pixar\",\"comments\":[]}, {\"title\":\"ToyStory\",\"image\":\"03.jpg\",\"content\":\"\u{c6b0}\u{b514}\u{ac00}\u{cd5c}\u{ace0}\",\"comments\":[{\"id\":2,\"user\":\"bill\",\"comment\":\"Microsoft\"}]}, {\"title\":\"\u{adf9}\u{c7a5}\u{c740}\",\"image\":\"04.jpg\",\"content\":\"\u{c5b4}\u{b514}\u{b85c}\",\"comments\":[{\"id\":4,\"user\":\"cook\",\"comment\":\"apple\"}]}]".data(using: .utf8)
    
    var randomButton = UIButton(frame: CGRect(x: 140, y: 100, width: 100, height: 70))

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        myModel.makeJsonArray(jsonData:jsonData!)
        
        
        randomButton.setTitle("Random", for: .normal)
        randomButton.setTitleColor(UIColor.white,for: .normal)
        randomButton.backgroundColor=UIColor.black
        randomButton.addTarget(self, action: #selector(buttonTouched(_:)), for: .touchUpInside)
        self.view.addSubview(randomButton)
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func buttonTouched(_ sender:UIButton){
        
        let result : PhotoDetailViewController = storyboard?.instantiateViewController(withIdentifier: "PhotoDetail") as! PhotoDetailViewController
        
        
        if let resultButton = self.navigationController{self.present(result, animated: true, completion: nil)
        
        let ranNum = Int(arc4random_uniform(4))
        //let ranNum = Int(arc4random_uniform(UInt32((jsonData?.count)!)))
        result.saveData = myModel.item(atIndex: ranNum)
        result.randomNumber = ranNum
        }
            
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
