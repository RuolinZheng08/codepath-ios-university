//
//  PhotoCell.swift
//  unit1-tumblr
//
//  Created by Ruolin Zheng on 2019/10/19.
//  Copyright © 2019 Ruolin Zheng. All rights reserved.
//

import UIKit

class PhotoCell: UITableViewCell {

    @IBOutlet weak var photoImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
