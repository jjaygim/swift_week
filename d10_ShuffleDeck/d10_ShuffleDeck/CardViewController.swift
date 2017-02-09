//
//  CardViewController.swift
//  d10_ShuffleDeck
//
//  Created by 김재정 on 2017. 2. 9..
//  Copyright © 2017년 jjaygim. All rights reserved.
//

import UIKit

class CardViewController: UIViewController {
    
    var shuffleData:(ViewController.CardFace, String) = (.None, "")
    
    @IBOutlet weak var shapeLabel: UILabel!
    
    @IBOutlet weak var numberLabel: UILabel!
    
    @IBOutlet weak var cardImageView: UIImageView!

    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        cardImageView.image = UIImage(named: "\(shuffleData.0.rawValue.characters.first!)\(shuffleData.1)")
        
        shapeLabel.text = shuffleData.0.rawValue
        numberLabel.text = shuffleData.1
        


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
