//
//  SellerProduct.swift
//  Kaidee
//
//  Created by supidsara thantanaporn on 4/6/17.
//  Copyright © 2017 Group2. All rights reserved.
//

import UIKit

class SellerProduct: UIViewController {
    @IBOutlet weak var menuBtn: UISegmentedControl!
    @IBAction func menu(_ sender: Any) {
        if (menuBtn.selectedSegmentIndex==0){
            self.performSegue(withIdentifier: "toHome", sender: sender)
        }else if (menuBtn.selectedSegmentIndex==1){
            self.performSegue(withIdentifier: "toProfile", sender: sender)
        }else if (menuBtn.selectedSegmentIndex==2){
            self.performSegue(withIdentifier: "toWish", sender: sender)
        }else if (menuBtn.selectedSegmentIndex==3){
            self.performSegue(withIdentifier: "toSell", sender: sender)
        }
        
    }


    @IBOutlet weak var SellerPic: UIImageView!
    
    @IBOutlet weak var SellerName: UILabel!
    @IBOutlet weak var SellerAddress: UILabel!
    
    @IBOutlet weak var SellerTel: UILabel!
    
    @IBAction func InfoProduct(_ sender: Any) {
    }
    
//    @IBOutlet weak var Product1: UIImageView!
//    
//    @IBOutlet weak var Product2: UIImageView!
//    
//    @IBOutlet weak var Product3: UIImageView!
//    
//    @IBOutlet weak var Product4: UIImageView!
//    
//    @IBOutlet weak var Product5: UIImageView!
//    
//    @IBOutlet weak var Product6: UIImageView!
//    
//    @IBOutlet weak var Product7: UIImageView!
//    
//    @IBOutlet weak var Product8: UIImageView!
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
    
    @IBAction func product1(_ sender: Any) {
        self.pushToProductName()
    }
    
    func pushToProductName() {
        if let vc = self.storyboard?.instantiateViewController(withIdentifier: "ProductNameVC") as? ProductName {
            vc.tagID = 0
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }

}
