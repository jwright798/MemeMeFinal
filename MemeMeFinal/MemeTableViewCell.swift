//
//  MemeTableViewCell.swift
//  MemeMeFinal
//
//  Created by Jeremy Wright on 7/1/17.
//  Copyright © 2017 Jeremy Wright. All rights reserved.
//

import UIKit

class MemeTableViewCell: UITableViewCell {
    @IBOutlet weak var memeImage: UIImageView!
    @IBOutlet weak var memeText: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
