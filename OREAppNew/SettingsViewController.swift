//
//  SettingsViewController.swift
//  OREAppNew
//
//  Created by Ujjwalsingh Rajput on 21/03/23.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var ProfilePhoto: UIImageView!
    @IBOutlet weak var Name: UILabel!
    @IBOutlet weak var UserName: UILabel!
    @IBOutlet weak var BackgroundImage: UIImageView!
        override func viewDidLoad() {
        super.viewDidLoad()
        ProfilePhoto.image = UIImage(named: "sample-profile")
        UserName.text = String(user1.userName)
        Name.text = String(user1.name)
        BackgroundImage.image = UIImage(named: "ORE 2 Small")
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
