//
//  Filter.swift
//  Kaidee
//
//  Created by Vicky on 4/9/2560 BE.
//  Copyright © 2560 Group2. All rights reserved.
//

import UIKit

class Filter: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {

    @IBOutlet weak var picker1: UIPickerView!
    
    @IBOutlet weak var picker2: UIPickerView!
    
    @IBOutlet weak var picker3: UIPickerView!
    var Array1 = ["มือถือ","คอมพิวเตอร์","เครื่องดนตรี","กีฬา","จักรยาน","แม่และเด็ก","กระเป๋า","นาฬิกา","รองเท้า","เสื้อผ้าและเครื่องแต่งกาย","สุขภาพและความงาม","บ้านและสวน","พระเครื่อง","ของสะสม","กล้อง","เครื่องใช้ไฟฟ้า","เกมส๋","สัตว์เลี้ยง","อสังหาริมทรัพย์","รถมือสอง","อะไหล่รถ","มอเตอร์ไซค์","งานอดิเรก","ธุรกิจ","บริการ","ท่องเที่ยว","การศึกษา","แบ่งปัน"]
    
    var Array2 = ["First Hand", "Second Hand"]
    
    var Array3 = ["0-1000","1000-2000","2000-3000","more than 3000"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        picker1.delegate = self
        picker1.dataSource = self
        picker2.delegate = self
        picker2.dataSource = self
        picker3.delegate = self
        picker3.dataSource = self
        
        


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView == picker1{
            return Array1[row]
        }
        else if pickerView == picker2{
            return Array2[row]
        }else{
            return Array3[row]
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView == picker1{
            return Array1.count
        }
        else if pickerView == picker2{
            return Array2.count
        }else{
            return Array3.count
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
