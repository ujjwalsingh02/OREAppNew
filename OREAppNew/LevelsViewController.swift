//
//  LevelsViewController.swift
//  OREAppNew
//
//  Created by Ujjwalsingh Rajput on 21/03/23.
//

import UIKit

class LevelsViewController: UIViewController {
    @IBOutlet weak var LevelNumberLabel: UILabel!
    @IBOutlet weak var PointsSelectedLevelLabel: UILabel!
    @IBOutlet weak var PlayButton: UIButton!
    @IBOutlet weak var LevelNumber: UILabel!
    @IBOutlet weak var LevelStatus: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        LevelNumberLabel.text = "Level " +  String(level1.currLevel) + "/" + String(level1.totalLevels)
        PointsSelectedLevelLabel.text = String(user1.points.currLevelPoints)
        PlayButton.tintColor = UIColor(named: "green")
        //Add the func/if else to choose the image
        //How to store true and false
        
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
