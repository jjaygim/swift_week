//
//  DetailViewController.swift
//  d08_MVC
//
//  Created by 김재정 on 2017. 2. 1..
//  Copyright © 2017년 jjaygim. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var push2Button = UIButton(frame: CGRect(x: 140, y: 100, width: 100, height: 70))

    override func viewDidLoad() {
        super.viewDidLoad()
        
        push2Button.setTitle("파랑", for: .normal)
        push2Button.setTitleColor(UIColor.white,for: .normal)
        push2Button.backgroundColor=UIColor.black
        push2Button.addTarget(self, action: #selector(button2Touched(_:)), for: .touchUpInside)
        self.view.addSubview(push2Button)
        


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func button2Touched(_ sender:UIButton) {
        let detail2VC:Detail2ViewController = storyboard?.instantiateViewController(withIdentifier: "Blue") as! Detail2ViewController
        
        
        if let navigation2 = self.navigationController{navigation2.pushViewController(detail2VC, animated: true)
        }
        else {
            self.present(detail2VC, animated: true, completion: nil)
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
