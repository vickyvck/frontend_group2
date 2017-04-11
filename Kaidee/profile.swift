//
//  profile.swift
//  try
//
//  Created by Admin on 4/6/2560 BE.
//  Copyright © 2560 Admin. All rights reserved.
//

import UIKit

class profile: UIViewController {

   
    @IBOutlet weak var menuBtn: UISegmentedControl!
    @IBAction func menu(_ sender: Any) {
        if (menuBtn.selectedSegmentIndex==0){
            self.performSegue(withIdentifier: "toHome", sender: sender)
        }else if (menuBtn.selectedSegmentIndex==1){
         //   self.performSegue(withIdentifier: "toProfile", sender: sender)
        }else if (menuBtn.selectedSegmentIndex==2){
            self.performSegue(withIdentifier: "toWish", sender: sender)
        }else if (menuBtn.selectedSegmentIndex==3){
            self.performSegue(withIdentifier: "toSell", sender: sender)
        }
        
    }
    @IBOutlet weak var con1: UIButton!
    
    @IBOutlet weak var con2: UIButton!
    
    @IBOutlet weak var con6: UIButton!
    @IBOutlet weak var con5: UIButton!
    @IBOutlet weak var con4: UIButton!
    @IBOutlet weak var con3: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        con1.layer.cornerRadius=5
        con2.layer.cornerRadius=5
        con3.layer.cornerRadius=5
        con4.layer.cornerRadius=5
        con5.layer.cornerRadius=5
        con6.layer.cornerRadius=5
        
        
        // Do any additional setup after loading the view.
    }

    
    @IBAction func confirm1(_ sender: UIButton) {
        let refreshAlert = UIAlertController(title: "Confirm order", message: "This will lead to comment and rating for product delivery", preferredStyle: UIAlertControllerStyle.alert)
        
        refreshAlert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { (action: UIAlertAction!) in
            (self.performSegue(withIdentifier: "toComment", sender: sender))
        }))
        
        refreshAlert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { (action: UIAlertAction!) in
            print("Handle Cancel Logic here")
        }))
        
        present(refreshAlert, animated: true, completion: nil)
         
    }
    @IBAction func confirm2(_ sender: UIButton) {
        let refreshAlert = UIAlertController(title: "Confirm order", message: "This will lead to comment and rating for product delivery", preferredStyle: UIAlertControllerStyle.alert)
        
        refreshAlert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { (action: UIAlertAction!) in
            (self.performSegue(withIdentifier: "toComment", sender: sender))
        }))
        
        refreshAlert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { (action: UIAlertAction!) in
            print("Handle Cancel Logic here")
        }))
        
        present(refreshAlert, animated: true, completion: nil)
        
    }
    @IBAction func confirm3(_ sender: UIButton) {
        let refreshAlert = UIAlertController(title: "Confirm order", message: "This will lead to comment and rating for product delivery", preferredStyle: UIAlertControllerStyle.alert)
        
        refreshAlert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { (action: UIAlertAction!) in
            (self.performSegue(withIdentifier: "toComment", sender: sender))
        }))
        
        refreshAlert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { (action: UIAlertAction!) in
            print("Handle Cancel Logic here")
        }))
        
        present(refreshAlert, animated: true, completion: nil)
       
    }
    @IBAction func confirm4(_ sender: UIButton) {
        let refreshAlert = UIAlertController(title: "Confirm order", message: "This will lead to comment and rating for product delivery", preferredStyle: UIAlertControllerStyle.alert)
        
        refreshAlert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { (action: UIAlertAction!) in
            (self.performSegue(withIdentifier: "toComment", sender: sender))
        }))
        
        refreshAlert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { (action: UIAlertAction!) in
            print("Handle Cancel Logic here")
        }))
        
        present(refreshAlert, animated: true, completion: nil)
        
    }
    @IBAction func confirm5(_ sender: UIButton) {
        let refreshAlert = UIAlertController(title: "Confirm order", message: "This will lead to comment and rating for product delivery", preferredStyle: UIAlertControllerStyle.alert)
        
        refreshAlert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { (action: UIAlertAction!) in
            (self.performSegue(withIdentifier: "toComment", sender: sender))
        }))
        
        refreshAlert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { (action: UIAlertAction!) in
            print("Handle Cancel Logic here")
        }))
        
        present(refreshAlert, animated: true, completion: nil)

    }
    @IBAction func confirm6(_ sender: UIButton) {
        let refreshAlert = UIAlertController(title: "Confirm order", message: "This will lead to comment and rating of product delivery", preferredStyle: UIAlertControllerStyle.alert)
        
        refreshAlert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { (action: UIAlertAction!) in
        
        }))
        
        refreshAlert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { (action: UIAlertAction!) in
            print("Handle Cancel Logic here")
        }))
        
        present(refreshAlert, animated: true, completion: nil)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var or1: UILabel!
    @IBOutlet weak var or2: UILabel!
    @IBOutlet weak var or3: UILabel!
    @IBOutlet weak var or4: UILabel!
    @IBOutlet weak var or5: UILabel!
    @IBOutlet weak var or6: UILabel!
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */


}
