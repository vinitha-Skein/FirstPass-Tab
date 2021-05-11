//
//  MenuCollectionViewCell.swift
//  Firstpass Ipad
//
//  Created by Skeintech on 05/05/21.
//

import UIKit

class MenuCollectionViewCell: UICollectionViewCell
{
   
    @IBOutlet weak var cellView: UIView!
    @IBOutlet weak var menuItemLabel: UILabel!
    var buttonPressed : (() -> ()) = {}
 
    @IBAction func ButtonClicked(_ sender: Any)
    {
        buttonPressed()
    }
}
