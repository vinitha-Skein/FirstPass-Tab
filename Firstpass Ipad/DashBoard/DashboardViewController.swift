//
//  DashboardViewController.swift
//  Firstpass Ipad
//
//  Created by Vinitha on 11/05/21.
//

import UIKit


class DashboardViewController: UIViewController  {

    @IBOutlet weak var logoImageView: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var sidemenuView: SideMenuView!
    
    @IBOutlet weak var collectionViewOtherServices: UICollectionView!
    
    @IBOutlet weak var collectionViewServices: UICollectionView!
    
    @IBOutlet weak var otherServicesLabel: UILabel!
    
    @IBOutlet weak var viewAllButton: UIButton!
    @IBOutlet weak var todaysDateLabel: UILabel!
    
    var menuServices = [ServicesModel]()
    var otherServices = [ServicesModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureSideMenu()
//        loadInitialMenuServices()
//        loadInitialOtherServices()
    }
    
    func configureSideMenu(){
        sidemenuView.delegate = self
    }

 
    
}

extension DashboardViewController : SideMenuViewDelegate {
    func ShowDashboardView() {
        
    }
    
    func ShowCallView() {
        
    }
    
    func ShowFacilitiesView() {
        
    }
    
    func ShowFeedbackView() {
        
    }
    
    func ShowSpecialServicesView() {
       
    }
    
    
}

extension DashboardViewController : UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == collectionViewServices {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DashboardMenuCVCTitle", for: indexPath) as! DashboardMenuCVC
//            cell.BorderView.backgroundColor =  UIColor.init(hex: "f2000000")
//            cell.imageView.image = UIImage(named: menuServices[indexPath.row].image)
//            cell.titleLabel.text = menuServices[indexPath.row].title
        return cell
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DashboardMenuCVCOther", for: indexPath) as! DashboardMenuCVC
////            cell.BorderView.backgroundColor = otherServices[indexPath.row].color
//            cell.imageView.image = UIImage(named: otherServices[indexPath.row].image)
//            cell.titleLabel.text = otherServices[indexPath.row].title
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (collectionView.frame.width/3) - 30
        return CGSize(width: width, height: collectionView.frame.size.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == collectionViewOtherServices {
            return 3
        } else {
            return 4
        }
    }

}


//MARK: load Static Data
//extension DashboardViewController {
//    func loadInitialMenuServices() {
//        let value1 =  ServicesModel(title: "Food & Beverages", image: "catering", color: "B99CF1")
////        let value2 =  ServicesModel(title: "Video/Entertainment", image: UIImage(named: "catering"), color: #colorLiteral(red: 0.9494856, green: 0.5571094155, blue: 0.3099102378, alpha: 1))
////        let value3 =  ServicesModel(title: "Discharge", image: UIImage(named: "catering"), color: #colorLiteral(red: 0.9743992686, green: 0.7669623494, blue: 0.2975504696, alpha: 1))
////        let value4 =  ServicesModel(title: "Report", image: UIImage(named: "catering"), color: #colorLiteral(red: 0.3618969619, green: 0.8343093991, blue: 0.8127869964, alpha: 1))
//
//        self.menuServices.append(value1)
//        self.menuServices.append(value2)
//        self.menuServices.append(value3)
//        self.menuServices.append(value4)
//    }
//
//    func loadInitialOtherServices() {
////        let value1 =  ServicesModel(title: "Food & Beverages", image: UIImage(named: "catering"), color: #colorLiteral(red: 0.9302060008, green: 0.8923208117, blue: 0.9924793839, alpha: 1))
////        let value2 =  ServicesModel(title: "Video/Entertainment", image: UIImage(named: "catering"), color: #colorLiteral(red: 0.9886234403, green: 0.9182482362, blue: 0.8740240335, alpha: 1))
////        let value3 =  ServicesModel(title: "Discharge", image: UIImage(named: "catering"), color: #colorLiteral(red: 0.9971681237, green: 0.9689027667, blue: 0.8948201537, alpha: 1))
//
//        self.otherServices.append(value1)
//        self.otherServices.append(value2)
//        self.otherServices.append(value3)
//    }
//}


   
    
   

