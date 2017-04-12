//
//  editbankaccount.swift
//  Kaidee
//
//  Created by Admin on 4/6/2560 BE.
//  Copyright © 2560 Group2. All rights reserved.
//
import UIKit

class editbankaccount: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onBack(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBOutlet var accountName: UITextField!
    
    @IBOutlet var accountNum: UITextField!
    
    @IBOutlet weak var bankName: UITextField!
    
    @IBAction func saveAccount(_ sender: Any) {
        var AName = String(accountName.text!) //keep account name
        var ANum = String(accountNum.text!) //keep account num
        //NOTE ยังไม่ได้เช็ค จำนวนเลข
        var BName = String(bankName.text!) //keep bank name
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
