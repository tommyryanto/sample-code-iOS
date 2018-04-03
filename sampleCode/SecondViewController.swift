//
//  SecondViewController.swift
//  sampleCode
//
//  Created by Tommy Ryanto on 3/4/18.
//  Copyright © 2018 Tommy Ryanto. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var product: String?
    var price: String?
    var img: UIImage?

    @IBOutlet weak var img1: UIImageView!
    
    @IBOutlet weak var price1: UILabel!
    @IBOutlet weak var qty: UITextField!
    @IBOutlet weak var pro1: UILabel!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! ThirdViewController
        
        destination.pro = product
        destination.qty = qty.text
        destination.img = img1.image
        destination.total1 = Int(qty.text!)! * Int(price!)!
    }
    
    @IBAction func btn(_ sender: Any) {
        if Int(qty.text!) == nil{
            let alert = UIAlertController(title: "Error", message: "Qty must be number", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        else if Int(qty.text!)! <= 0{
            let alert = UIAlertController(title: "Error", message: "Qty must be at least 1", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        else{
            performSegue(withIdentifier: "third", sender: self)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        img1.image = img
        price1.text = price
        pro1.text = product
        

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
