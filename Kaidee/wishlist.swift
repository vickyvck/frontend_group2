//
//  wishlist.swift
//  try
//
//  Created by Admin on 4/7/2560 BE.
//  Copyright © 2560 Admin. All rights reserved.
//

import UIKit

class wishlist: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource,UIPickerViewDelegate,UITextViewDelegate {

    @IBOutlet weak var myCollectionView: UICollectionView!
    var images = ["4","1","2","3","4","1","2","3"]
    var priceList = ["3000","5900","600","0","3000","5900","600","0"]
    var cate = ["bag","clothes","collection","share","bag","clothes","collection","share",]
    var s = ["first hand","second hand","second hand", "first hand","first hand","second hand","second hand", "first hand",]
    
    @IBOutlet weak var orderbtn: UISegmentedControl!
    @IBAction func onOrderBy(_ sender: UISegmentedControl) {
        if(orderbtn.selectedSegmentIndex==1){
            print("order by price")
        }else if(orderbtn.selectedSegmentIndex==0){
            print("order by category")
        }

        
    }
    

      override func viewDidLoad() {
//        super.viewDidLoad()
        self.myCollectionView.delegate=self
        self.myCollectionView.dataSource=self


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count //นับว่ามีกี่รูป จะได้สร้างช่องตามรูป
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collection_cell", for: indexPath) as! MyCollectionViewCell
        cell.myImageView.image = UIImage(named: images[indexPath.row])
        cell.c.text = cell.c.text!+cate[indexPath.row]
        cell.p.text = "Price:"+priceList[indexPath.row]
        cell.indexPath = indexPath;
     //   cell.id = 29; เผื่อแยก cell จากไอดี ตอนนี้แยกจากอินเด็กอยู่ (อยู่ช่องที่เท่าไหร่)
        cell.status.text=cell.status.text!+s[indexPath.row]
        //ค่า c,p,status ดูจาก mycollectionViewcell naa
 
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.row)
        
    }
    @IBOutlet weak var menuBtn: UISegmentedControl!
    @IBAction func menu(_ sender: Any) {
        if (menuBtn.selectedSegmentIndex==0){
            self.performSegue(withIdentifier: "toHome", sender: sender)
        }else if (menuBtn.selectedSegmentIndex==1){
            self.performSegue(withIdentifier: "toProfile", sender: sender)
        }else if (menuBtn.selectedSegmentIndex==2){
//            self.performSegue(withIdentifier: "toWish", sender: sender)
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
