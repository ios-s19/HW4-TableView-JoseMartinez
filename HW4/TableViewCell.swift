//
//  TableViewCell.swift
//  HW4
//
//  Created by Jose on 4/4/19.
//  Copyright © 2019 Jose. All rights reserved.
//


import UIKit    
    
class TableViewCell: UITableViewCell {
    //UIImageView assigned to photo variable
    @IBOutlet weak var photo: UIImageView!
    //UILabel assigned to label variable
    @IBOutlet weak var label: UILabel!
    //function to wait for all actions and
    //connections to be finished
    override func awakeFromNib() {
        super.awakeFromNib()
        label.adjustsFontForContentSizeCategory = true
    }
    //override to add 10 spaces on the left
    override var frame: CGRect {
        get {
            return super.frame
        }
        set (newFrame) {
            var frame = newFrame
            frame.origin.x += 10
            super.frame = frame
        }
    }
}
