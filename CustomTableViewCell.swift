//
//  CustomTableViewCell.swift
//  StretchMyHeader2
//
//  Created by Philip Ha on 2016-10-11.
//  Copyright © 2016 Philip Ha. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var headlineLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    
    var newsItem: CellItem? {
        didSet {
            if let item = newsItem {
                categoryLabel.text = item.category.rawValue
                
            } else {
                categoryLabel.text = "ERROR"
                headlineLabel.text = "ERROR"
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
