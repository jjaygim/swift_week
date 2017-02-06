//
//  PhotoDetailViewController.swift
//  d08_MVC
//
//  Created by 김재정 on 2017. 2. 4..
//  Copyright © 2017년 jjaygim. All rights reserved.
//

import UIKit

class PhotoDetailViewController: UIViewController {
    
    var saveData : [String:Any] = [:]
    var randomNumber : Int = 0
    

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var content: UILabel!
    @IBOutlet weak var comment: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillLayoutSubviews() {
        titleLabel.text = saveData["title"] as! String?
        content.text = saveData["content"] as! String?
        comment.text = String("댓글 \(randomNumber)개")
        imageView.image = UIImage(named: saveData["image"] as! String)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func closeView(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
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
