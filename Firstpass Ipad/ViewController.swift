//
//  ViewController.swift
//  Firstpass Ipad
//
//  Created by Skeintech on 05/05/2
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var createnewButton: UIButton!
    @IBOutlet weak var collectionView: UICollectionView!
    
    var menuItems = ["Walk 200 steps","Do 50 leg raise","Complete 10 arm stretches","Walk 200 steps","Do 50 leg raises","Complete 10 aram stretches"]
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        createnewButton.layer.cornerRadius = 10
    }


    @IBAction func create_New_Clicked(_ sender: Any)
    {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "NewGoalViewController") as! NewGoalViewController
        present(vc, animated: true, completion: nil)
    }
}
extension ViewController: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        menuItems.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MenuCollectionViewCell", for: indexPath) as! MenuCollectionViewCell
        cell.menuItemLabel.text = menuItems[indexPath.row]
        cell.cellView.layer.cornerRadius = 10
        cell.buttonPressed =
        {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "PopupViewController") as! PopupViewController
            vc.tag = 0
            self.present(vc, animated: true, completion: nil)
        }
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (collectionView.frame.width/2)-20
        return CGSize(width: width, height: 100)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "PopupViewController") as! PopupViewController
        vc.tag = 1
        present(vc, animated: true, completion: nil)
    }
    
}
