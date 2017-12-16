//
//  CustonCellTableViewCell.swift
//  zooApp
//
//  Created by amr on 12/16/17.
//  Copyright © 2017 amr. All rights reserved.
//

import UIKit

class CustonCellTableViewCell: UITableViewCell {

    @IBOutlet weak var laImage: UIImageView!
    @IBOutlet weak var laDesc: UILabel!
    @IBOutlet weak var laTitle: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
