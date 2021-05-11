//
//  FamilyMembersTableViewCell.swift
//  Firstpass Ipad
//
//  Created by Skeintech on 06/05/21.
//

import UIKit

class FamilyMembersTableViewCell: UITableViewCell {

    @IBOutlet weak var profileImageView: UIImageView!
    
    @IBOutlet weak var editButton: UIButton!
    @IBOutlet weak var saveLabel: UILabel!
    @IBOutlet weak var dobFeild: UITextField!
    @IBOutlet weak var relationField: UITextField!
    
    @IBOutlet weak var nameFeild: UITextField!
    
    var count = 1
    
    var buttonPressed : (() -> ()) = {}
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBAction func ediyButton(_ sender: Any)
    {
        buttonPressed()
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

   
}
