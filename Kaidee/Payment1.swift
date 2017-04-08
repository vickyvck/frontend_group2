//
//  Payment1.swift
//  Kaidee
//
//  Created by supidsara thantanaporn on 4/6/17.
//  Copyright © 2017 Group2. All rights reserved.
//

import UIKit

class Payment1: UIViewController, UITextFieldDelegate,UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var PickBank: UIPickerView!
    
    var Array = ["ธนาคารกรุงเทพ","ธนาคารกรุงไทย","ธนาคารกสิกรไทย","ธนาคารกรุงศรีอยุธยา"]
    @IBOutlet weak var putDate: UITextField!
    
    @IBOutlet weak var AmountMoney: UITextField!
    func textFieldDidEndEditing(_ textField: UITextField) {
       
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    @IBOutlet weak var pickbank: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        putDate.delegate=self
        AmountMoney.delegate=self
        
        PickBank.delegate = self
        PickBank.dataSource = self

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return Array[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return Array.count
    }
    
    public func numberOfComponents(in pickerView: UIPickerView) -> Int{
        return 1
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
