//
//  editPass.swift
//  Kaidee
//
//  Created by Admin on 4/6/2560 BE.
//  Copyright © 2560 Group2. All rights reserved.
//
import UIKit

class editPass: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBOutlet var inputPassword: UITextField!
    
    @IBOutlet weak var checkPass: UITextField!
    
    
    @IBAction func savePass(_ sender: Any) {
        var passWord = String(inputPassword.text!)
        //เก็บค่า -รหัสผ่านไว้ใน password
       self.dismiss(animated: true, completion: nil)
    }
    @IBAction func onBack(_ sender: Any) {
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
