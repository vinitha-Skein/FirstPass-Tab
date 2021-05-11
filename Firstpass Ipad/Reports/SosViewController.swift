//
//  SosViewController.swift
//  Firstpass Ipad
//
//  Created by Skeintech on 11/05/21.
//

import UIKit

class SosViewController: UIViewController {

    @IBOutlet weak var container: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        container.layer.cornerRadius = 10
        container.layer.shadowColor = UIColor.black.cgColor
        container.layer.shadowOpacity = 1
        container.layer.shadowOffset = .zero
        container.layer.shadowRadius = 2

        // Do any additional setup after loading the view.
    }
    
    @IBAction func cancel_clicked(_ sender: Any)
    {
        dismiss(animated: true, completion: nil)
    }
    

}
