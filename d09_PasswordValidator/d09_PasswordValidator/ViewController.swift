//
//  ViewController.swift
//  d09_PasswordValidator
//
//  Created by 김재정 on 2017. 2. 7..
//  Copyright © 2017년 jjaygim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var passwordInput: UITextField!
    @IBOutlet weak var levelView: UIView!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var pwdButton = UIButton(frame: CGRect(x: 140, y: 250, width: 100, height: 50))
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        levelView.backgroundColor = UIColor.gray
        
        pwdButton.setTitle("확인", for: .normal)
        pwdButton.setTitleColor(UIColor.white,for: .normal)
        pwdButton.backgroundColor=UIColor.black
        pwdButton.addTarget(self, action: #selector(checkButton(_:)), for: .touchUpInside)
        self.view.addSubview(pwdButton)
        

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    
    func passwordVaildator(password:String)->Int {
        
        //let pwd : String = password
        let pwdArray = Array(password.utf8)
        
        var num = 0
        var char = 0
        var spc = 0
        
        var level = 0
        
        for i in pwdArray
        {
            if (47 < i && i < 58) {num += 1}
            else if (64 < i && i < 91 || 96 < i && i < 123) {char += 1}
            else {spc += 1}
        }
        
        if pwdArray.count < 8
        {
            if pwdArray.count == num {level = 1}
            else if pwdArray.count == char {level = 2}
            else {level = 3}
            
        }
            
        else
        {
            if num > 0 && char > 0 && spc > 0 {level = 5}
            else {level = 4}
            
        }
        
        return level
        
    }
    
    
    
    //암호임력없이 버튼 누르면 왜 1단계가 나오는지 모르겠음;
    func checkButton(_ sender:Any)
    {
        
        let levelNum = passwordVaildator(password:passwordInput.text!)
        
        if levelNum == 1
        {
            levelView.backgroundColor = UIColor.red
            descriptionLabel.text="아주 약한 암호"
        }
        if levelNum == 2
        {
            levelView.backgroundColor = UIColor.orange
            descriptionLabel.text="약한 암호"
        }
        if levelNum == 3
        {
            levelView.backgroundColor = UIColor.yellow
            descriptionLabel.text="보통 암호"
        }
        if levelNum == 4
        {
            levelView.backgroundColor = UIColor.blue
            descriptionLabel.text="강한 암호"
        }
        if levelNum == 5
        {
            levelView.backgroundColor = UIColor.green
            descriptionLabel.text="아주 강한 암호"
        }
        
    }
    

}
