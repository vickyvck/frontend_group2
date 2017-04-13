//
//  browseProduct.swift
//  try
//
//  Created by Admin on 4/9/2560 BE.
//  Copyright © 2560 Admin. All rights reserved.
//

import UIKit

class browseProduct: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate,UITextFieldDelegate {
    
    @IBAction func onCancel(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
        
    }
    
    @IBOutlet weak var productImage: UIImageView!
    var sendImage: UIImage!

    @IBOutlet weak var productID: UILabel!
    @IBOutlet weak var prodDes: UITextView!

    @IBOutlet weak var price: UITextField!
    @IBOutlet weak var hashtag: UITextField!
    @IBOutlet weak var hash2: UIButton!
    @IBOutlet weak var hash1: UIButton!
    @IBOutlet weak var hash3: UIButton!
    @IBOutlet weak var hash4: UIButton!
    @IBOutlet weak var textCat: UITextField!
    
    @IBOutlet weak var dropCat: UIPickerView!
    
    @IBOutlet weak var textSubCat: UITextField!
    
    @IBOutlet weak var dropSubCat: UIPickerView!
    var cat=["bag","clothes","collection","share"]
    var subCat:[String] = []

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prodDes.layer.borderWidth=0.5
        prodDes.layer.borderColor=UIColor.black.cgColor
        prodDes.layer.cornerRadius=5
        hash1.layer.cornerRadius=5
        hash2.layer.cornerRadius=5
        hash3.layer.cornerRadius=5
        hash4.layer.cornerRadius=5
        productImage.image = sendImage
        print("loaded")

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func submitSell(_ sender: Any) {
        print(prodDes.text!)
        print(price.text!)
        self.performSegue(withIdentifier: "toHome", sender: sender)
        
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return  1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        var countRow: Int = cat.count
        if pickerView == dropSubCat{
            countRow = self.subCat.count
        }
        return countRow
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView==dropCat{
            return cat[row]
        }else{
            return subCat[row]
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView==dropCat{
            self.textCat.text=String(self.cat[row])!
            self.dropCat.isHidden=true
            if row==0 {
                subCat=["handbag","wallet","bagpack"]
                dropSubCat.reloadAllComponents()
                
            }else if row==1{
                subCat=["shirt","t-shirt","jeans","dress","jacket"]
                dropSubCat.reloadAllComponents()
            }else if row==2{
            subCat=["antique","fanclub","limited"]
            dropSubCat.reloadAllComponents()
            }else if row==3{
                subCat=["used","animal","donate"]
                dropSubCat.reloadAllComponents()
            }
        
        }else if pickerView==dropSubCat{
            self.textSubCat.text=String(self.subCat[row])!
            self.dropSubCat.isHidden=true
        }
    }
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if textField==self.textCat{
            dropCat.isHidden=false
            textSubCat.text=""
        }else if textField==self.textSubCat{
            dropSubCat.isHidden=false
        }
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField==self.textCat{
            dropCat.isHidden=true
        }else if textField==self.textSubCat{
            dropSubCat.isHidden=true
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
