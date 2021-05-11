//
//  VideoCallViewController.swift
//  Firstpass Ipad
//
//  Created by Skeintech on 10/05/21.
//

import UIKit

class VideoCallViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var category = ["Nurse","Housekeeping Staff","Catering Services","Doctor","Guest Services"]
    var logo = [UIImage(named: "nurse"),UIImage(named: "mop"),UIImage(named: "catering"),UIImage(named: "doctor"),UIImage(named: "information-desk")]
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        
        
        // Do any additional setup after loading the view.
    }
    
}
extension VideoCallViewController: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout

{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return logo.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "VideoCallRequestCollectionViewCell", for: indexPath) as! VideoCallRequestCollectionViewCell
        cell.logoImage.image = logo[indexPath.row]
        cell.categoryLabel.text = category[indexPath.row]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (collectionView.frame.width/4) - 30
        return CGSize(width: width, height: 300)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)
    {
        
        if(indexPath.row == 0 || indexPath.row == 3)
        {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(identifier: "VideoPopupViewController") as! VideoPopupViewController
            present(vc, animated: true, completion: nil)
            vc.headLabel.text = category[indexPath.row]
        }
    }
    
}
