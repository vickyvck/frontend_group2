//
//  ViewController.swift
//  Kaidee
//
//  Created by Vicky on 4/5/2560 BE.
//  Copyright © 2560 Group2. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var login: UIButton!
    @IBOutlet weak var sellnow: UIButton!
    
    @IBOutlet weak var slideShowView: ImageSlideshow!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        slideShowView.setImageInputs([
            ImageSource(image: UIImage(named: "blackbag")!),
            ImageSource(image: UIImage(named: "bluebag")!),
            ImageSource(image: UIImage(named: "Unknown-4")!),
            ImageSource(image: UIImage(named: "Unknown-5")!),
            
            ])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
}




