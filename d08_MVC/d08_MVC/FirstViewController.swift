//
//  FirstViewController.swift
//  d08_MVC
//
//  Created by 김재정 on 2017. 2. 1..
//  Copyright © 2017년 jjaygim. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    var pushButton = UIButton(frame: CGRect(x: 140, y: 100, width: 100, height: 70))

    override func viewDidLoad() {
        super.viewDidLoad()
        
        pushButton.setTitle("노랑", for: .normal)
        pushButton.setTitleColor(UIColor.white,for: .normal)
        pushButton.backgroundColor=UIColor.black
        pushButton.addTarget(self, action: #selector(buttonTouched(_:)), for: .touchUpInside)
        self.view.addSubview(pushButton)

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func buttonTouched(_ sender:UIButton) {
        let detailVC:DetailViewController = storyboard?.instantiateViewController(withIdentifier: "Yellow") as! DetailViewController
        //detailVC.titleString = "Yellow"
        
        
        if let navigation = self.navigationController{navigation.pushViewController(detailVC, animated: true)
        }
        else {
                self.present(detailVC, animated: true, completion: nil)
        }
        
    }



}

