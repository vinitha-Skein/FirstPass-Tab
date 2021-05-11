//
//  NewGoalViewController.swift
//  Firstpass Ipad
//
//  Created by Skeintech on 05/05/21.
//

import UIKit

class NewGoalViewController: UIViewController {


    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var container: UIView!
    @IBOutlet weak var goalTextView: UITextView!
    @IBOutlet weak var typeLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        goalTextView.delegate = self
        container.layer.cornerRadius = 10
        container.layer.shadowColor = UIColor.black.cgColor
        container.layer.shadowOpacity = 1
        container.layer.shadowOffset = .zero
        container.layer.shadowRadius = 2
        addButton.layer.cornerRadius = 10

        // Do any additional setup after loading the view.
    }
    
    @IBAction func AddClicked(_ sender: Any)
    {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func back_Clicked(_ sender: Any)
    {
        dismiss(animated: true, completion: nil)
    }
    
}
extension NewGoalViewController: UITextViewDelegate
{
    func textViewDidBeginEditing(_ textView: UITextView) {
        typeLabel.isHidden = true
    }
}
