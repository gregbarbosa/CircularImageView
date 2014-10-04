//
//  TableViewCell.swift
//  CircleCell
//
//  Created by @gregbarbosa on 9/22/14.
//  Copyright (c) 2014 @gregbarbosa. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    let cellRowHeight: CGFloat = 80

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    // 2. Restructures the UITableViewCell to bound the imageView to the height
    // of the cellRowHeight. Then adjusts the corner radius to to be half the 
    // height of the cell and then masks to those bounds.
    override func layoutSubviews() {
        super.layoutSubviews()
        self.imageView?.bounds = CGRectMake(0, 0, cellRowHeight, cellRowHeight)
        self.imageView?.layer.cornerRadius = cellRowHeight/2
        self.imageView?.layer.masksToBounds = true

    }
}
