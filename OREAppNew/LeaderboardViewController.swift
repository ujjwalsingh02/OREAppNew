//
//  LeaderboardViewController.swift
//  OREAppNew
//
//  Created by Ujjwalsingh Rajput on 21/03/23.
//

import UIKit

class LeaderboardViewController: UIViewController {

    @IBOutlet weak var currentRankLabel: UILabel!
    
    @IBOutlet weak var totalPlayersLabel: UILabel!
    
    @IBOutlet weak var NameLabel: UILabel!
    @IBOutlet weak var pointsLabel: UILabel!
    
    @IBOutlet weak var ProfilePhoto: UIImageView!
    @IBOutlet weak var pointsBox: UILabel!
    @IBOutlet weak var rankBoxNumber: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        currentRankLabel.text = String(leaderBoard1.rank.currRank)
        totalPlayersLabel.text = "/" + String(leaderBoard1.rank.totalUser)
        pointsLabel.text = String(leaderBoard1.points.currLevelPoints)
        rankBoxNumber.text = String(leaderBoard1.rank.currRank)
        pointsBox.text = String(leaderBoard1.points.totalPoints)+" Points"
        NameLabel.text = String(leaderBoard1.user.userName)
        ProfilePhoto.image = UIImage(named: "sample-profile")
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
