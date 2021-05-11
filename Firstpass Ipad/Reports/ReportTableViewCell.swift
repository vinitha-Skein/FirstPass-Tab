//
//  ReportTableViewCell.swift
//  Firstpass Ipad
//
//  Created by Skeintech on 11/05/21.
//

import UIKit

class ReportTableViewCell: UITableViewCell {

    

    
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var processLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}
