//
//  SecondViewController.swift
//  d08_MVC
//
//  Created by 김재정 on 2017. 2. 1..
//  Copyright © 2017년 jjaygim. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    let pickPhoto = UIImagePickerController()
    
    var pickButton=UIButton(frame: CGRect(x: 140, y: 100, width: 100, height: 70))
    
    var imageView=UIImageView(frame: CGRect(x: 12, y: 200, width: 350, height: 300))

    override func viewDidLoad() {
        super.viewDidLoad()
        pickPhoto.delegate = self  //안하면 오류는 안나는데 이미지가 안보임 !!원래 프로토콜 콘폼할 수 없다고 나와야 하나 않나...그건 필수 메소드였지
        
        
        pickButton.setTitle("Picker", for: .normal)
        pickButton.addTarget(self, action: #selector(buttonTouched(_:)), for: .touchUpInside)
        pickButton.setTitleColor(UIColor.white,for: .normal)
        pickButton.backgroundColor=UIColor.black
        
        
        self.view.addSubview(pickButton)
        
        self.view.addSubview(imageView)
        
        

        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        let chosenImage = info[UIImagePickerControllerOriginalImage]
        imageView.contentMode = .scaleAspectFit
        imageView.image = chosenImage as! UIImage?
        
        picker.dismiss(animated: true, completion: nil)
    }
    
    
    func buttonTouched(_ sender: UIButton){
        pickPhoto.sourceType = .photoLibrary
        present(pickPhoto, animated: true, completion: nil)
    }
    




}

