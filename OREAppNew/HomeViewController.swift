//
//  ViewController.swift
//  OREAppNew
//
//  Created by Ujjwalsingh Rajput on 12/03/23.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet var homeScreenTopPercentLabel: UILabel!
    @IBOutlet var homeScreenTotalPointsLabel: UILabel!
    @IBOutlet var homeScreenCurrentStreakDaysLabel: UILabel!
    @IBOutlet var homeScreenTotalUserLabel: UILabel!
    @IBOutlet var homeScreenCurrentRank: UILabel!
    @IBOutlet var homeScreenPointsLabel: UILabel!
    @IBOutlet var homeScreenLevelLabel: UILabel!
    
    var userpass : String = ""
    var namepass : String = ""
    
        override func viewDidLoad() {
        super.viewDidLoad()
        
            if(user1.reset.reset)
            {
                user1.points.totalPoints = 0;
                user1.points.totalPointsOfLevel = 0;
                user1.userRank.currRank = user1.userRank.totalUser
                user1.level.currLevel = 1
                user1.streak.currDays = 1
            }
            
        homeScreenLevelLabel.text = "Level " + String(user1.level.currLevel) + " |"
        homeScreenPointsLabel.text = String(user1.points.currLevelPoints) + " Points"
        homeScreenCurrentRank.text = String(user1.userRank.currRank)
        homeScreenTotalUserLabel.text = "/"+String(user1.userRank.totalUser)
        homeScreenCurrentStreakDaysLabel.text = String(user1.streak.currDays)
        homeScreenTotalPointsLabel.text = String(user1.points.totalPoints)
        homeScreenTopPercentLabel.text = "Top " + String((Float((user1.userRank.currRank))/Float((user1.userRank.totalUser)))*100) + "%"
            
          
    }

    
}

