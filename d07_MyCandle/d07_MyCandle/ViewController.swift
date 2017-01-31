//
//  ViewController.swift
//  d07_MyCandle
//
//  Created by 김재정 on 2017. 1. 11..
//  Copyright © 2017년 jjaygim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!  //weak 소유권 없이 약하게 참조
    
    @IBOutlet weak var candleImage: UIImageView!
    
    override func viewDidLoad() {  //오버라이드? 화면에 보여줄 준비가 다 됐어
        super.viewDidLoad()
        candleImage.image=UIImage(named: "candleOff.jpg")
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func buttonTouched(_ sender: Any) {
        print("butonTouched")
        
        let button=sender as! UIButton  //느낌표는 무조건 해!
        
        button.setTitle("블리자드", for: .normal)
        button.setTitle("눌렀다", for: .highlighted)
        button.backgroundColor=UIColor.clear
        titleLabel.backgroundColor=UIColor.clear
        titleLabel.text="안녕"
        
        candleImage.image=UIImage(named: "candleOn.jpg")
        
    }  //인터페이스 빌더의 액션
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

//화면에 보이는걸 바꾸고싶다 아울렛, 이벤트(함수)를 바꾸고 싶다 액션

