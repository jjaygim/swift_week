//
//  ViewController.swift
//  d07_Measurement
//
//  Created by 김재정 on 2017. 1. 11..
//  Copyright © 2017년 jjaygim. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var picker: UIPickerView!
    @IBOutlet weak var input: UITextField!

    @IBOutlet weak var ouput: UILabel!
    
    let pickerData=["J --> cal","km/h --> mph","C --> F"]
    var getType:String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        picker.dataSource = self
        picker.delegate = self
        
        ouput.text = ""
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in: UIPickerView)->Int {
        return 1
        
    }
    func pickerView(_: UIPickerView, numberOfRowsInComponent: Int)->Int {
        return pickerData.count
    }
    
    //func pickerView(pickerView:UIPickerView, rowHighForComponent:Int) {
        
    //}
    
    func pickerView(_ pickerView: UIPickerView, titleForRow: Int, forComponent: Int) -> String? {
        return pickerData[titleForRow]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow: Int, inComponent: Int) {
        getType = pickerData[didSelectRow]
    }

    
    
    @IBAction func convert(_ sender: Any) {
        func convert(_ sender: Any) {
        }
        
        var conto=Measurement.init(value: Double(input.text!)!, unit: UnitEnergy.joules)
        conto.convert(to: UnitEnergy.calories)
        
        var conToo=Measurement.init(value: Double(input.text!)!, unit: UnitSpeed.kilometersPerHour)
        conToo.convert(to: UnitSpeed.milesPerHour)
        
        var conTooo=Measurement.init(value: Double(input.text!)!, unit: UnitTemperature.celsius)
        conTooo.convert(to: UnitTemperature.fahrenheit)
        
        if (getType=="J --> cal") {ouput.text="\(conto)"}
        if (getType=="km/h --> mph") {ouput.text="\(conToo)"}
        if (getType=="C --> F") {ouput.text="\(conTooo)"}
        
        //빈칸 컨버트하면 에러
        //맨처음 피커뷰 선택 따로 하지 않고 디폴트인 상태에서 컨버트하면 아웃풋 출력 안됨 겟타입이 안잡히나봄
        
    }
    


}



