//
//  comment.swift
//  try
//
//  Created by Admin on 4/8/2560 BE.
//  Copyright © 2560 Admin. All rights reserved.
//

import UIKit

class comment: UIViewController, UITextViewDelegate {
    var Array = ["5","4","3","2","1"]
  
    @IBOutlet weak var productPic: UIImageView!
    @IBOutlet weak var sellerID: UILabel!
    @IBOutlet weak var orderID: UILabel!
    @IBOutlet weak var comment: UITextView!
    @IBOutlet weak var rateSeg: UISegmentedControl!
    @IBOutlet weak var shipSeg: UISegmentedControl!
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

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func textViewDidChange(_ textView: UITextView) {
        
    }
    func textViewDidEndEditing(_ textView: UITextView) {
            }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }

    
    @IBAction func commentSubmit(_ sender: Any) {
        print(shipSeg.titleForSegment(at: shipSeg.selectedSegmentIndex)!)
        print(rateSeg.titleForSegment(at: rateSeg.selectedSegmentIndex) ?? 5)
        print(comment.text!)
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
//    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
////        if pickerView==Picker1{
//            return Array[row]
////    }
////        else {return Array1[row]}
//    }
//    
//        func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
//            return Array.count
//        }
//        
//        public func numberOfComponents(in pickerView: UIPickerView) -> Int{
//            return 1
//        }


}
