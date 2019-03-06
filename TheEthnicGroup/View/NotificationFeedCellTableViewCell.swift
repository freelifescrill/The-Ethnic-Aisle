//
//  NotificationFeedCellTableViewCell.swift
//  TheEthnicGroup
//
//  Created by DJ Sellers on 2/24/19.
//  Copyright © 2019 DJ Sellers. All rights reserved.
//

import UIKit

class NotificationFeedCellTableViewCell: UITableViewCell {
    
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var dateStampLabel: UILabel!
    @IBOutlet weak var stampImageView: UIImageView!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
