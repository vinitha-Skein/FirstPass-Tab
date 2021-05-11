//
//  ProfileViewController.swift
//  Firstpass Ipad
//
//  Created by Skeintech on 06/05/21.
//

import UIKit

class ProfileViewController: UIViewController{
        
    @IBOutlet weak var addmemberButton: UIButton!
    @IBOutlet weak var saveLabel: UILabel!
    @IBOutlet weak var editButton: UIButton!
    @IBOutlet weak var passportLabel: UITextField!
    @IBOutlet weak var emailLabel: UITextField!
    @IBOutlet weak var passwordLabel: UITextField!
    @IBOutlet weak var MRNLabel: UITextField!
    @IBOutlet weak var phoneLabel: UITextField!
    @IBOutlet weak var nameLabel: UITextField!
    @IBOutlet weak var rightView: UIView!
    @IBOutlet weak var passwordView: UIView!
    @IBOutlet weak var personalView: UIView!
    var familyMembers = ["Mr. John Parker","Mrs. Kiara Parker","Ms. Jullie Parker"]
    var relation = ["Brother","Mother","Sister"]
    var dob = ["June 29,1993","March 03, 1972","August 29,1996"]
    var imagePicker: ImagePicker!
    var base64String = String()
    var tag:Int = 0

    
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        saveLabel.isHidden = true
        tableView.delegate = self
        tableView.dataSource = self
        rightView.layer.cornerRadius = 10
        passwordView.layer.cornerRadius = 10
        personalView.layer.cornerRadius = 10
        emailLabel.isUserInteractionEnabled = false
        MRNLabel.isUserInteractionEnabled = false
        phoneLabel.isUserInteractionEnabled = false
        passportLabel.isUserInteractionEnabled = false
        passwordLabel.isUserInteractionEnabled = false

        nameLabel.isUserInteractionEnabled = false
        addmemberButton.layer.cornerRadius = 5
        
        self.imagePicker = ImagePicker(presentationController: self, delegate: self)
        userImage.layer.cornerRadius = 20
        
    }
    
    @IBAction func edit_password(_ sender: Any)
    {
        passwordLabel.isUserInteractionEnabled = true
    }
    @IBAction func chooseImg(_ sender: UIButton)
    {
        self.imagePicker.present(from: sender)

    }
    @IBAction func editProfile_clicked(_ sender: Any)
    {
        if (tag == 0)
        {
            saveLabel.isHidden = false
            emailLabel.isUserInteractionEnabled = true
            MRNLabel.isUserInteractionEnabled = true
            phoneLabel.isUserInteractionEnabled = true
            passportLabel.isUserInteractionEnabled = true
            nameLabel.isUserInteractionEnabled = true
            editButton.setImage(.none, for: .normal)
            self.tag = 1
        }
        else
        {
            saveLabel.isHidden = true
            emailLabel.isUserInteractionEnabled = false
            MRNLabel.isUserInteractionEnabled = false
            phoneLabel.isUserInteractionEnabled = false
            passportLabel.isUserInteractionEnabled = false
            nameLabel.isUserInteractionEnabled = false
            editButton.setImage(UIImage(named: "pencil-2"), for: .normal)
            self.tag = 0
        }
        
    }
    
}
extension ProfileViewController:UITableViewDelegate,UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return familyMembers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FamilyMembersTableViewCell") as! FamilyMembersTableViewCell
        cell.dobFeild.text = dob[indexPath.row]
        cell.nameFeild.text = familyMembers[indexPath.row]
        cell.relationField.text = relation[indexPath.row]
        cell.profileImageView.layer.cornerRadius = 10
        cell.saveLabel.isHidden = true
        cell.buttonPressed =
            {
                print("Inn")
                if (cell.count == 1)
                {
                    cell.dobFeild.isUserInteractionEnabled = true
                    cell.nameFeild.isUserInteractionEnabled = true
                    cell.relationField.isUserInteractionEnabled = true
                    cell.count = 0
                    cell.saveLabel.isHidden = false
                    cell.editButton.setImage(.none, for: .normal)
                }
                else
                {
                    cell.dobFeild.isUserInteractionEnabled = false
                    cell.nameFeild.isUserInteractionEnabled = false
                    cell.relationField.isUserInteractionEnabled = false
                    cell.count = 1
                    cell.saveLabel.isHidden = true
                    cell.editButton.setImage(UIImage(named: "pencil-2"), for: .normal)
                    
                }
        }
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}
extension ProfileViewController: ImagePickerDelegate {
    func didSelect(image: String?) {
        base64String = image!
        let imgData = Data(base64Encoded: image!, options: .ignoreUnknownCharacters)
        DispatchQueue.main.async {
            self.userImage.image = UIImage(data: imgData!)
        }
    }
}
