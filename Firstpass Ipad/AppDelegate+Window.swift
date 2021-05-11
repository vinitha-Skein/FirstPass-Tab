//
//  AppDelegate+Window.swift
//  Firstpass Ipad
//
//  Created by Vinitha on 11/05/21.
//

import Foundation
import UIKit

extension AppDelegate {
    
    func moveToDashboardViewController(){
        let sb = UIStoryboard(name: "Dashboard", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "DashboardViewController") as! DashboardViewController
        let nav = UINavigationController.init(rootViewController: vc)
        nav.navigationBar.isHidden = true
        self.window?.rootViewController = nav
        self.window?.makeKeyAndVisible()
    }
    
    
}
