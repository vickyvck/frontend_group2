//
//  ProductRecommendation.swift
//  Kaidee
//
//  Created by Vicky on 4/8/2560 BE.
//  Copyright © 2560 Group2. All rights reserved.
//

import UIKit

class ProductRecommendation: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {

    @IBOutlet weak var filter: UIButton!
    @IBOutlet weak var search: UISearchBar!
    @IBOutlet weak var cat: UIPickerView!
    var Array = ["มือถือ","คอมพิวเตอร์","เครื่องดนตรี","กีฬา","จักรยาน","แม่และเด็ก","กระเป๋า","นาฬิกา","รองเท้า","เสื้อผ้าและเครื่องแต่งกาย","สุขภาพและความงาม","บ้านและสวน","พระเครื่อง","ของสะสม","กล้อง","เครื่องใช้ไฟฟ้า","เกมส๋","สัตว์เลี้ยง","อสังหาริมทรัพย์","รถมือสอง","อะไหล่รถ","มอเตอร์ไซค์","งานอดิเรก","ธุรกิจ","บริการ","ท่องเที่ยว","การศึกษา","แบ่งปัน"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //comment
        
        cat.delegate = self
        cat.dataSource = self
        
        
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
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
