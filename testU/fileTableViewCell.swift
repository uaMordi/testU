//
//  fileTableViewCell.swift
//  testU
//
//  Created by Mor Di on 27.01.17.
//  Copyright © 2017 Mor Di. All rights reserved.
//

import UIKit

class fileTableViewCell: UITableViewCell {

    @IBOutlet weak var fileType: UIImageView!
    @IBOutlet weak var fileName: UILabel!
    @IBOutlet weak var fileDate: UILabel!
    @IBOutlet weak var colorMark: UIView!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
