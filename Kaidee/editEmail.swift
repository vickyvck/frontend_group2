//
//  editEmail.swift
//  Kaidee
//
//  Created by Admin on 4/6/2560 BE.
//  Copyright © 2560 Group2. All rights reserved.
//
import UIKit

class editEmail: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet var inputEmail: UITextField!
    
    @IBAction func saveEmail(_ sender: Any) {
        var email = String(inputEmail.text!)
        self.dismiss(animated: true, completion: nil)
        //เก็บค่า -อีเมลไว้ใน email
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
