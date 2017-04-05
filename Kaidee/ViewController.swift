//
//  ViewController.swift
//  Kaidee
//
//  Created by Vicky on 4/5/2560 BE.
//  Copyright © 2560 Group2. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var slideShowView: ImageSlideshow!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        slideShowView.setImageInputs([
            ImageSource(image: UIImage(named: "Lab6_2")!),
            ImageSource(image: UIImage(named: "Lab6_3")!),
            ImageSource(image: UIImage(named: "Lab6_5")!),
            ImageSource(image: UIImage(named: "Lab6_8")!),
            
            ])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func pressdsafsadfsa(_ sender: Any) {
        print("mi")
    }


}

