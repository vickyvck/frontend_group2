//
//  Preference.swift
//  Kaidee
//
//  Created by Vicky on 4/6/2560 BE.
//  Copyright © 2560 Group2. All rights reserved.
//

import UIKit

class Preference: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {

    @IBOutlet weak var Picker1: UIPickerView!
   
    var Array = ["FIRST HAND","SECOND HAND"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Picker1.delegate = self
        Picker1.dataSource = self
        
       
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
