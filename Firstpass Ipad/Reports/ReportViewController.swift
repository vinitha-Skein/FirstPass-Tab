

import UIKit

class ReportViewController: UIViewController
{

    @IBOutlet weak var filterButton: UIButton!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var filterView: UIView!
    var process = ["CBP Test","CBP Test","CBP Test","CBP Test","CBP Test","CBP Test"]
    var date = ["09-April-2021","09-April-2021","09-April-2021","09-April-2021","09-April-2021","09-April-2021"]
    var type = ["Laboratory","Laboratory","Observations","Laboratory","Observations","Observations"]
    override func viewDidLoad()
    {
        super.viewDidLoad()
        let orange = UIColor(red: 248/255, green: 118/255, blue: 0/255, alpha: 1)
        filterView.layer.borderWidth = 1
        filterView.layer.borderColor = orange.cgColor
        filterView.layer.cornerRadius = 10
        tableView.delegate = self
        tableView.dataSource = self

        // Do any additional setup after loading the view.
    }
    @IBAction func filter_Clicked(_ sender: Any)
    {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "SosViewController") as! SosViewController
        present(vc, animated: true, completion: nil)
    }
    
}
extension ReportViewController: UITableViewDelegate,UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return process.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ReportTableViewCell") as! ReportTableViewCell
        cell.processLabel.text = process[indexPath.row]
        cell.dateLabel.text = date[indexPath.row]
        cell.typeLabel.text = type[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80    }
    
}
