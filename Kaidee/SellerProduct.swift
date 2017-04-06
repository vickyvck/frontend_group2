//
//  SellerProduct.swift
//  Kaidee
//
//  Created by supidsara thantanaporn on 4/6/17.
//  Copyright © 2017 Group2. All rights reserved.
//

import UIKit

class SellerProduct: UIViewController {

    @IBOutlet weak var SellerPic: UIImageView!
    
    @IBOutlet weak var SellerName: UILabel!
    @IBOutlet weak var SellerAddress: UILabel!
    
    @IBOutlet weak var SellerTel: UILabel!
    
    @IBAction func InfoProduct(_ sender: Any) {
    }
    
    @IBOutlet weak var Product1: UIImageView!
    
    @IBOutlet weak var Product2: UIImageView!
    
    @IBOutlet weak var Product3: UIImageView!
    
    @IBOutlet weak var Product4: UIImageView!
    
    @IBOutlet weak var Product5: UIImageView!
    
    @IBOutlet weak var Product6: UIImageView!
    
    @IBOutlet weak var Product7: UIImageView!
    
    @IBOutlet weak var Product8: UIImageView!
    @IBOutlet weak var ScrollProduct: UIView!
    @IBAction func BottomBar(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
