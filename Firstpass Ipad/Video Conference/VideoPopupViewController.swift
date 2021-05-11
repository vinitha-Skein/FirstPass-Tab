

import UIKit

class VideoPopupViewController: UIViewController {

    @IBOutlet weak var container: UIView!
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var headLabel: UILabel!
    var doctornames = ["Dr.Ayesha Raza","Dr.Hanzeen Muhammed","Dr.Shreya Mishra"]
    var doctorcategory = ["Cardiology","Cardiology","Cardiology"]
    
    var nursenames = ["Sandhya Ramesh","Rahul Haskar","Shreya Mishra"]
    var nursecategory = ["Head-Nurse","Assistant-Nurse","junior-Nurse"]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        container.layer.cornerRadius = 10
        container.layer.shadowColor = UIColor.black.cgColor
        container.layer.shadowOpacity = 1
        container.layer.shadowOffset = .zero
        container.layer.shadowRadius = 2
        // Do any additional setup after loading the view.
    }
    
    @IBAction func back_Pressed(_ sender: Any)
    {
        dismiss(animated: true, completion: nil)
    }
    
    
}
extension VideoPopupViewController:UITableViewDelegate,UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return doctornames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if(headLabel.text == "Doctor")
       {
            let cell = tableView.dequeueReusableCell(withIdentifier: "VideoPopupTableViewCell") as! VideoPopupTableViewCell
            cell.nameLabel.text = doctornames[indexPath.row]
            cell.departmentLabel.text = doctorcategory[indexPath.row]
            return cell
       }
        else
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "VideoPopupTableViewCell") as! VideoPopupTableViewCell
            cell.nameLabel.text = nursenames[indexPath.row]
            cell.departmentLabel.text = nursecategory[indexPath.row]
            return cell
        }
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
}
