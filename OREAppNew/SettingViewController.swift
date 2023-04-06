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
        
        userName.text = user1.userName
        name.text = user1.name
        profilePhoto.image = UIImage(named: user1.userImageName)
        backgroundImages[0].image = UIImage(named: "ORE 2 Small")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        userName.text = user1.userName
        name.text = user1.name
        profilePhoto.image = UIImage(named: user1.userImageName)
        backgroundImages[0].image = UIImage(named: "ORE 2 Small")
    }
    
    @IBAction func resetButtonPressed(_ sender: UIButton) {
        
        let alert = UIAlertController(title: "Reset", message: "Are you sure you want to reset all your progress?", preferredStyle: .alert)
                
        let yesButton = UIAlertAction(title: "Yes", style: .default){
                    (action) in
                    
            print("You have opted to reset all your data.")
                    
            user1.points.totalPoints = 0;
            user1.points.totalPointsOfLevel = 0;
            user1.userRank.currRank = user1.userRank.totalUser
            user1.level.currLevel = 1
            user1.streak.currDays = 1
        }
        //
                let noButton = UIAlertAction(title: "No", style: .default){
                    (action) in
                    
                }
        //
                alert.addAction(yesButton)
                alert.addAction(noButton)
        
                present(alert,animated: true,completion: nil)
                
                
    }
    
    
    @IBAction func logOutButtonPressed(_ sender: UIButton) {
        let alert = UIAlertController(title: "Log Out", message: "Are you sure you want to log out?", preferredStyle: .alert)
                
                let yesButton = UIAlertAction(title: "Yes", style: .default){
                    (action) in
                    
                    print("You have opted to log out.")
        
                    var user2 : User = user1
                    user1 = guest
                    let controller = self.storyboard?.instantiateViewController(withIdentifier: "homeStart") as! UITabBarController
                    
                    controller.modalPresentationStyle = .fullScreen
                controller.modalTransitionStyle = .crossDissolve

                    self.present(controller,animated: true,completion: nil)
                }
        //
                let noButton = UIAlertAction(title: "No", style: .default){
                    (action) in
                 
                }
        //
                alert.addAction(yesButton)
                alert.addAction(noButton)
        
                present(alert,animated: true,completion: nil)
                
                
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
