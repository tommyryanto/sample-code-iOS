//
//  ThirdViewController.swift
//  sampleCode
//
//  Created by Tommy Ryanto on 3/4/18.
//  Copyright © 2018 Tommy Ryanto. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    @IBOutlet weak var img1: UIImageView!
    @IBOutlet weak var pro1: UILabel!
    @IBOutlet weak var qty1: UILabel!
    @IBOutlet weak var total: UILabel!
    
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var username: UITextField!
    
    
    @IBAction func `continue`(_ sender: Any) {
        if (username.text?.characters.count)! < 8 {
            let alert = UIAlertController(title: "Error", message: "Username must be 8 characters or more", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        else if !(email.text?.hasSuffix("@icloud.com"))!{
            let alert = UIAlertController(title: "Error", message: "email must be ended with @icloud.com", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        else{
            performSegue(withIdentifier: "back", sender: self)
        }
    }
    
    
    var qty: String?
    var pro: String?
    var total1: Int?
    var img: UIImage?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        img1.image = img
        pro1.text = pro
        qty1.text = qty
        total.text = "\(total1!)"
        
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
