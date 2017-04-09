//
//  Preference.swift
//  Kaidee
//
//  Created by Vicky on 4/6/2560 BE.
//  Copyright © 2560 Group2. All rights reserved.
//

import UIKit

class Preference: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {

    @IBOutlet weak var submit: UIButton!
    @IBOutlet weak var login: UIButton!
    @IBOutlet weak var Picker: UIPickerView!
    @IBOutlet weak var Picker1: UIPickerView!
   
    var Array = ["มือถือ","คอมพิวเตอร์","เครื่องดนตรี","กีฬา","จักรยาน","แม่และเด็ก","กระเป๋า","นาฬิกา","รองเท้า","เสื้อผ้าและเครื่องแต่งกาย","สุขภาพและความงาม","บ้านและสวน","พระเครื่อง","ของสะสม","กล้อง","เครื่องใช้ไฟฟ้า","เกมส๋","สัตว์เลี้ยง","อสังหาริมทรัพย์","รถมือสอง","อะไหล่รถ","มอเตอร์ไซค์","งานอดิเรก","ธุรกิจ","บริการ","ท่องเที่ยว","การศึกษา","แบ่งปัน"]
    
    var Array1 = ["First Hand", "Second Hand"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //comment
        Picker.delegate = self
        Picker.dataSource = self
        Picker1.delegate = self
        Picker1.dataSource = self
        
       
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView == Picker{
            return Array[row]
        }
        else{
            return Array1[row]
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView == Picker{
            return Array.count
        }
        else{
            return Array1.count
        }

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
