//
//  ItemCell.swift
//  NSUI TV
//
//  Created by XIPHIAS Softwares on 18/03/19.
//  Copyright © 2019 A&M. All rights reserved.
//

import UIKit

class ItemCell: UITableViewCell {

    @IBOutlet weak var headlineImgView: UIImageView!//logoImage
    @IBOutlet weak var headlineTitle: UILabel!//titleLabel
    @IBOutlet weak var headlineDateAndTime: UILabel!//dateAndTimeLabel
    @IBOutlet weak var headlineTagLine: UILabel!//tagLineLabel
    @IBOutlet weak var headlineTxt: UILabel!//desciptionLabel
    @IBOutlet weak var headlineImgView2: UIImageView!//videoImageView
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
