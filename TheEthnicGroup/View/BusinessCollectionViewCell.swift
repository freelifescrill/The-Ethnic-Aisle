//
//  BusinessCollectionViewCell.swift
//  TheEthnicGroup
//
//  Created by DJ Sellers/Rashii Henry on 7/21/18.
//  Copyright © 2018 DJ Sellers. All rights reserved.
//

import UIKit
import Hero


class BusinessCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var businessTypeLabel: UILabel!
    @IBOutlet weak var businessDescLabel: UITextView!
    
    var heroIDnum = "Ethnic"
   //will eventually add an image label.
    
    var unplashImage: UIImage? {
        didSet{
            self.hero.isEnabled = true
            self.hero.id = heroIDnum
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        //init code
        self.hero.isEnabled = true
        self.hero.id = heroIDnum
    }
   
}
