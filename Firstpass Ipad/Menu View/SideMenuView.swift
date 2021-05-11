//
//  SideMenuView.swift
//  Firstpass Ipad
//
//  Created by Vinitha on 11/05/21.
//

import UIKit

protocol SideMenuViewDelegate {
    func ShowDashboardView()
    func ShowCallView()
    func ShowFacilitiesView()
    func ShowFeedbackView()
    func ShowSpecialServicesView()
}


class SideMenuView: UIView {
    
    private let nibName = "SideMenuView"

    @IBOutlet weak var DashBoardButton: UIButton!
    
    @IBOutlet weak var callButton: UIButton!
    
    @IBOutlet weak var facilitiesButton: UIButton!
    
    @IBOutlet weak var feedbackButon: UIButton!
    
    @IBOutlet weak var specialServicesButton: UIButton!
    
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    var delegate: SideMenuViewDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        commonInit(nibName)
        
        
    }
    
    @IBAction func menuButtonsPressed(_ sender: UIButton) {
        switch sender.tag {
        case 0:
            self.delegate?.ShowDashboardView()
        case 1:
            self.delegate?.ShowCallView()
        case 2:
            self.delegate?.ShowFacilitiesView()
        case 3:
            self.delegate?.ShowFeedbackView()
        case 4:
            self.delegate?.ShowSpecialServicesView()
        default:
            self.delegate?.ShowDashboardView()
        }
        
    }

    
    
}
