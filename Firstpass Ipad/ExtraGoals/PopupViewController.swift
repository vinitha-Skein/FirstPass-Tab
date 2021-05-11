

import UIKit

class PopupViewController: UIViewController {

    @IBOutlet weak var container: UIView!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var noButton: UIButton!
    @IBOutlet weak var yesButton: UIButton!
    var tag = 0
    override func viewDidLoad()
    {
        
        super.viewDidLoad()
        container.layer.cornerRadius = 10
        container.layer.shadowColor = UIColor.black.cgColor
        container.layer.shadowOpacity = 1
        container.layer.shadowOffset = .zero
        container.layer.shadowRadius = 2
        if(tag == 0)
        {
            questionLabel.text = "Are you sure you want to delete this goal?"
            iconImageView.image = UIImage(named: "trash")
        }
        else
        {
            questionLabel.text = "Do you want to link your fitness tracker?"
            iconImageView.image = UIImage(named: "fitness-tracker")
        }
        noButton.layer.borderWidth = 1
        let orange: UIColor = UIColor( red: 238/255, green: 153/255, blue:16/255, alpha: 1.0 )
        noButton.layer.borderColor = orange.cgColor
        noButton.layer.cornerRadius = 10
        yesButton.layer.cornerRadius = 10
    }
    @IBAction func yesButton_Clicked(_ sender: Any)
    {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func noButton_Clicked(_ sender: Any)
    {
        dismiss(animated: true, completion: nil)
    }
    

}
