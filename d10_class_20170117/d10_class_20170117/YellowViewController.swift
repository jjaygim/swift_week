//
//  YellowViewController.swift
//  d10_class_20170117
//
//  Created by 김재정 on 2017. 1. 18..
//  Copyright © 2017년 jjaygim. All rights reserved.
//

import UIKit

class YellowViewController: UIViewController {
    var titleString:String=""
    var dataDictionary:[String:Any]=[:]

    @IBOutlet weak var titleLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //titleLabel.text=titleString
    }
    
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        //titleLabel.text=titleString
        titleLabel.text=dataDictionary["title"] as! String?  //=as? string
    }//as는 보통 상속을 받은 경우나 리턴타입이 Any인 경우에 데이터타입 변경을 위해 쓰임
    
    @IBAction func closeButtonTouched(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
        //self.dismiss(animated: true, completion: nil)
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
