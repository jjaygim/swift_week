//
//  Detail2ViewController.swift
//  d08_MVC
//
//  Created by 김재정 on 2017. 2. 1..
//  Copyright © 2017년 jjaygim. All rights reserved.
//

import UIKit

class Detail2ViewController: UIViewController {

    var secondButton = UIButton(frame: CGRect(x: 140, y: 100, width: 100, height: 70))
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        secondButton.setTitle("처음", for: .normal)
        secondButton.setTitleColor(UIColor.white,for: .normal)
        secondButton.backgroundColor=UIColor.black
        secondButton.addTarget(self, action: #selector(backTouched(_:)), for: .touchUpInside)
        self.view.addSubview(secondButton)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func backTouched(_ sender:UIButton) {
        self.navigationController?.popToRootViewController(animated: true)
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
