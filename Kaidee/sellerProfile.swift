//
//  sellerProfile.swift
//  Kaidee
//
//  Created by supidsara thantanaporn on 4/6/17.
//  Copyright © 2017 Group2. All rights reserved.
//

import UIKit

class sellerProfile: UIViewController {

    
 
  
    @IBOutlet weak var SellerPic: UIImageView!
   
//    @IBOutlet weak var ScrollComment: UIView!
    @IBOutlet weak var ShipFee: UIView!
    @IBOutlet weak var JoinedSince: UIView!
    @IBOutlet weak var TotalProduct: UIView!
//    @IBOutlet weak var SellerRating: CosmosView!
    @IBAction func InfoProduct(_ sender: Any) {
    }
    @IBOutlet weak var SellerTel: UILabel!
    @IBOutlet weak var SellerAddr: UILabel!
    @IBOutlet weak var SellerName: UILabel!
    override func viewDidLoad() {
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
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

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
