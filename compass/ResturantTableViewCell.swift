//
//  ResturantTableViewCell.swift
//  compass
//
//  Created by Christopther Garcia on 4/15/20.
//  Copyright © 2020 Mac Cooper. All rights reserved.
//

import UIKit

class ResturantTableViewCell: UITableViewCell {

    @IBOutlet weak var imageURLView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var styleLabel: UILabel!
    @IBOutlet weak var pricingLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
