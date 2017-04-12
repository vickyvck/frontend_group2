//
//  sell.swift
//  Kaidee
//
//  Created by Admin on 4/12/2560 BE.
//  Copyright © 2560 Group2. All rights reserved.
//

import UIKit

class sell: UIViewController,UINavigationControllerDelegate,UIImagePickerControllerDelegate {
    @IBOutlet weak var myImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    @IBAction func importImage(_ sender: UIButton) {
        let image = UIImagePickerController()
        image.delegate=self
        
        
        let refreshAlert = UIAlertController(title: "Photo Access", message: "Choose photo source", preferredStyle: .actionSheet)
        
        refreshAlert.addAction(UIAlertAction(title: "camera", style: .default, handler: { (action: UIAlertAction) in
            if UIImagePickerController.isSourceTypeAvailable(.camera){
                image.sourceType = UIImagePickerControllerSourceType.camera
                image.allowsEditing = false
                self.present(image,animated:true)
            }else{ }
        }))
        
        refreshAlert.addAction(UIAlertAction(title: "album", style: .default, handler: { (action: UIAlertAction) in
            image.sourceType = UIImagePickerControllerSourceType.photoLibrary
            image.allowsEditing = false
            self.present(image,animated:true,completion: nil)
        }))
        refreshAlert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        self.present(refreshAlert,animated:true)
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let image = info[UIImagePickerControllerOriginalImage] as? UIImage{
            myImage.image=image
        }else{
            //error msg
        }
        picker.dismiss(animated: true, completion: nil)
    }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion:nil )
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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