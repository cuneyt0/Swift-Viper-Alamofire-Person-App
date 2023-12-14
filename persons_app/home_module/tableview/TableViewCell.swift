//
//  TableViewCell.swift
//  persons_app
//
//  Created by Cuneyt on 26.11.2023.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var personInfo: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
