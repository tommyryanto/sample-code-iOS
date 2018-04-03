//
//  ViewController.swift
//  sampleCode
//
//  Created by Tommy Ryanto on 3/4/18.
//  Copyright © 2018 Tommy Ryanto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var product: String?
    var price: String?
    var img: UIImage?

    @IBOutlet weak var price1: UILabel!
    @IBAction func buy1(_ sender: Any) {
        product = pro1.text
        img = img1.image
        price = price1.text
        performSegue(withIdentifier: "buy", sender: self)
    }
    @IBOutlet weak var price2: UILabel!
    @IBAction func buy2(_ sender: Any) {
        product = pro2.text
        img = img2.image
        price = price2.text
        performSegue(withIdentifier: "buy", sender: self)
    }
    
    @IBAction func buy3(_ sender: Any) {
        product = pro3.text
        img = img3.image
        price = price3.text
        performSegue(withIdentifier: "buy", sender: self)
    }
    
    @IBOutlet weak var price3: UILabel!
    @IBOutlet weak var pro3: UILabel!
    @IBOutlet weak var pro2: UILabel!
    @IBOutlet weak var pro1: UILabel!
    
    @IBOutlet weak var img1: UIImageView!
    @IBOutlet weak var img2: UIImageView!
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! SecondViewController
        destination.product = product
        destination.price = price
        destination.img = img
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBOutlet weak var img3: UIImageView!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

