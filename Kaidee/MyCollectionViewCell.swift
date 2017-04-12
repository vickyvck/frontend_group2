//
//  MyCollectionViewCell.swift
//  try
//
//  Created by Admin on 4/7/2560 BE.
//  Copyright © 2560 Admin. All rights reserved.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {
    
    var indexPath: IndexPath? = nil;
    var id: Int = 0;
    
    @IBOutlet weak var c: UILabel!
    @IBOutlet weak var p: UILabel!
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var status: UILabel!
    
    @IBAction func addToCart(_ sender: Any) {
        print("add at \(String(describing: indexPath?.row))")

    }
    @IBOutlet weak var addCart: UIButton!
    
    @IBAction func removeWish(_ sender: UIButton) {
        print("remove from wishlist", indexPath?.row)
    }
    
}
