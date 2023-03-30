//
//  SettingViewController.swift
//  OREAppNew
//
//  Created by Ujjwalsingh Rajput on 28/03/23.
//

import UIKit

class SettingViewController: UIViewController {

    @IBOutlet var backgroundImages: [UIImageView]!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var profilePhoto: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userName.text = UserDefaults.standard.value(forKey: "username") as? String
        name.text = UserDefaults.standard.value(forKey: "name") as? String
        profilePhoto.image = UIImage(named: "sample-profile")
//        userName.text = String(user1.userName)
//        name.text = String(user1.name)
        backgroundImages[0].image = UIImage(named: "ORE 2 Small")
        // Do any additional setup after loading the view.
    }
    
    @IBAction func resetButtonPressed(_ sender: UIButton) {
        user1.points.totalPoints = 0;
        user1.points.totalPointsOfLevel = 0;
        user1.userRank.currRank = user1.userRank.totalUser
        user1.level.currLevel = 1
        user1.streak.currDays = 1
        user1.reset.reset = true
    }
    
    
    @IBAction func logOutButtonPressed(_ sender: UIButton) {
        
    }
    
    @IBAction func changeBackgroundButtonPressed(_ sender: UIButton) {
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
