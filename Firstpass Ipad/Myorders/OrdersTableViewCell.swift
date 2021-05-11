//
//  OrdersTableViewCell.swift
//  Firstpass Ipad
//
//  Created by Skeintech on 08/05/21.
//

import UIKit

class OrdersTableViewCell: UITableViewCell {

    @IBOutlet weak var promptButton: UIButton!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var dataLabel: UILabel!
    @IBOutlet weak var itemsLabel: UILabel!
    @IBOutlet weak var orderLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
