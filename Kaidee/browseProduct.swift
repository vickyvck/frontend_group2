//
//  browseProduct.swift
//  try
//
//  Created by Admin on 4/9/2560 BE.
//  Copyright © 2560 Admin. All rights reserved.
//

import UIKit

class browseProduct: UIViewController {
    
    @IBAction func onCancel(_ sender: Any) {
        
    }
    
    @IBOutlet weak var productImage: UIImageView!

    @IBOutlet weak var productID: UILabel!
    @IBOutlet weak var prodDes: UITextView!

    @IBOutlet weak var price: UITextField!
    @IBOutlet weak var hashtag: UITextField!
    @IBOutlet weak var search: UISearchBar!
    @IBOutlet weak var hash2: UIButton!
    @IBOutlet weak var hash1: UIButton!
    @IBOutlet weak var hash3: UIButton!
    @IBOutlet weak var hash4: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        prodDes.layer.borderWidth=0.5
        prodDes.layer.borderColor=UIColor.black.cgColor
        prodDes.layer.cornerRadius=5
        hash1.layer.cornerRadius=5
        hash2.layer.cornerRadius=5
        hash3.layer.cornerRadius=5
        hash4.layer.cornerRadius=5

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func submitSell(_ sender: Any) {
        print(prodDes.text!)
        print(search.text!)
        print(price.text!)
        self.performSegue(withIdentifier: "toHome", sender: sender)
        
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
