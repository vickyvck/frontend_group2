//
//  setting.swift
//  Kaidee
//
//  Created by Admin on 4/6/2560 BE.
//  Copyright © 2560 Group2. All rights reserved.
//
import UIKit

class setting: UIViewController {
    
        @IBOutlet weak var name: UILabel!
    @IBOutlet weak var email: UILabel!
    @IBOutlet weak var bank: UILabel!
    
    @IBOutlet weak var phone: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        name.layer.borderWidth = 0.5
        name.layer.borderColor = UIColor.gray.cgColor
        name.layer.cornerRadius = 4
        email.layer.borderWidth = 0.5
        email.layer.borderColor = UIColor.black.cgColor
        email.layer.cornerRadius = 4
        bank.layer.borderWidth = 0.5
        bank.layer.borderColor = UIColor.black.cgColor
        bank.layer.cornerRadius = 4
        phone.layer.borderWidth = 0.5
        phone.layer.borderColor = UIColor.black.cgColor
        phone.layer.cornerRadius = 4
        
        
        
        // Do any additional setup after loading the view.
    }
    

    @IBAction func toProfile(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
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
