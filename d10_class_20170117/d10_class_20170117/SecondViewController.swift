//
//  SecondViewController.swift
//  d10_class_20170117
//
//  Created by 김재정 on 2017. 1. 17..
//  Copyright © 2017년 jjaygim. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var uiv: UIImageView!


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func uip(_ sender: Any) {
        let pickerController=UIImagePickerController()
        
        pickerController.sourceType = .photoLibrary  //소스타입 카메라찍을지 라이브러리 가져올지 그런거 결정
        pickerController.delegate = self
        
        present(pickerController, animated: true, completion: nil)
        
        
    }
    func imagePickerController(_ picker:UIImagePickerController, didfinishPickingMediaWithInfo info: [String:Any]){
        if let image=info[UIImagePickerControllerOriginalImage]{
            uiv.image=image as! UIImage //as! 타입 변환
        }
        else{
            //print("There is no value!")
        }
        picker.dismiss(animated: true, completion: nil)
    }

}

//오토매틱인지 확인, 클래스명이 같은지 확인
