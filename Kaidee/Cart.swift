//
//  Cart.swift
//  Kaidee
//
//  Created by supidsara thantanaporn on 4/6/17.
//  Copyright © 2017 Group2. All rights reserved.
//

import UIKit

class Cart:



UIViewController {
    @IBAction func remove(_ sender: UIButton) {
        
        let removeAlert = UIAlertController(title: "Remove", message: "Are you sure to remove product from cart.", preferredStyle: UIAlertControllerStyle.alert)
        
        removeAlert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { (action: UIAlertAction!) in
            print("confirm to remove")
        }))
        
        removeAlert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { (action: UIAlertAction!) in
            print("don't remove")
        }))
        
        present(removeAlert, animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
