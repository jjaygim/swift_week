//
//  ViewController.swift
//  d07_Measurement
//
//  Created by 김재정 on 2017. 1. 11..
//  Copyright © 2017년 jjaygim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var picker: UIPickerView!
    @IBOutlet weak var input: UITextField!

    @IBAction func convert(_ sender: Any) {
        var conTo=Measurement.init(value: Double(input.text!)!, unit: UnitEnergy.joules)
        conTo.convert(to: UnitEnergy.calories)
        
        ouput.text="\(conTo)"
    }
    
    
    @IBOutlet weak var ouput: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

