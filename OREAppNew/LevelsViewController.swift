//
//  LevelsViewController.swift
//  OREAppNew
//
//  Created by Ujjwalsingh Rajput on 21/03/23.
//

import UIKit

class LevelsViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var CurrentLevelLabel: UILabel!
    @IBOutlet weak var CurrentLevelPoints: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        CurrentLevelLabel.text  = String(user1.level.currLevel)
        CurrentLevelPoints.text = String(user1.points.currLevelPoints)
        
        let user1 = LevelPage(currentLevel: 1, levelStatus: "Level Completed")
        levelPageUser.append(user1)
        
        let user2 = LevelPage(currentLevel: 2, levelStatus: "Level Completed")
        levelPageUser.append(user2)
        
        let user3 = LevelPage(currentLevel: 3, levelStatus: "Begin Level")
        levelPageUser.append(user3)
        
        let user4 = LevelPage(currentLevel: 4, levelStatus: "Level Locked")
        levelPageUser.append(user4)
        
        let user5 = LevelPage(currentLevel: 5, levelStatus: "Level Locked")
        levelPageUser.append(user5)
        
        tabel.tableFooterView = UIView(frame: .zero)
    }
    @IBOutlet weak var tabel: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return levelPageUser.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tabel.dequeueReusableCell(withIdentifier: "cell", for: indexPath)as! LevelTableViewCell
        
        
        return cell
        
        
    }
    
}
