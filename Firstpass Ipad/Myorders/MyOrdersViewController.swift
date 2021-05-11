//
//  MyOrdersViewController.swift
//  Firstpass Ipad
//
//  Created by Skeintech on 08/05/21.
//

import UIKit

class MyOrdersViewController: UIViewController {

    @IBOutlet weak var headingView: UIView!
    @IBOutlet weak var tableView: UITableView!
    var orders = ["Lunch","Mid meal Snacks","Lunch","Beverages","Mid meal Snacks"]
    var items = ["Mutton Curry,Fish Fillet Sandwich,Hummus","Chicken Soup,French Fries","Mutton Curry,Fish Fillet Sandwich, Hummus","Water","Chicken Soup,French Fries"]
    var datedata = ["11-April-2021","10-April-2021","09-April-2021","09-April-2021","09-April-2021"]
    var time = ["11:00 am","11:00 am","11:00 am","11:00 am","11:00 am"]
    var status = ["Pending","Pending","Completed","Completed","Completed"]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        headingView.layer.cornerRadius = 10
        // Do any additional setup after loading the view.
    }
    

    

}
extension MyOrdersViewController: UITableViewDelegate,UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return orders.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let orange = UIColor(red: 248/255, green: 118/255, blue: 0/255, alpha: 1)
        let green = UIColor(red: 21/255, green: 255/255, blue: 32/255, alpha: 1)

        let cell = tableView.dequeueReusableCell(withIdentifier: "OrdersTableViewCell") as! OrdersTableViewCell
        cell.orderLabel.text = orders[indexPath.row]
        cell.itemsLabel.text = items[indexPath.row]
        cell.dataLabel.text = datedata[indexPath.row]
        cell.timeLabel.text = time[indexPath.row]
        cell.statusLabel.text = status[indexPath.row]
        cell.promptButton.isHidden = true
        let currentStatus = status[indexPath.row]
        if  (currentStatus == "Pending")
        {
            cell.promptButton.isHidden = false
            cell.promptButton.layer.borderWidth = 1
            cell.promptButton.layer.borderColor = orange.cgColor
            cell.promptButton.layer.cornerRadius = 10
            cell.statusLabel.textColor = orange
        }
        else
        {
            cell.statusLabel.textColor = green
        }
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return  100
    }
}
