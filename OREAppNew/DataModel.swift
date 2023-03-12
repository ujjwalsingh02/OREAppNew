//
//  DataModel.swift
//  OREApp
//
//  Created by Ujjwalsingh Rajput on 12/03/23.
//

import Foundation
import UIKit

struct User{
    let id : Int
    let userName : String
    let name : String
    var userRank : Leaderboard
    var level : Level
    var streak : Streak
    var userImageName : String
}

struct Level{
    var currLevel : Int
    var attempts : Int
    var time : Timer
    var numberOfColors : Int
    var result : Bool
//    var output : Row
}

//struct Row{
//    var color1 = UIView
//    var color2 : UIView
//    var Color3 : UIView
//    var Color4 : UIView
//}

struct Points{
    var currLevelPoints : Int
    var totalPoints : Int
}

struct Streak{
    var startDate : Date
    var currDays : Int
    var reward : Points
}

struct BackgroundImage{
    var images : [UIImage]
}

struct Leaderboard{
    var points : Points
    var currRank : Int
}

class DataModel{
    private var users : User
    init(){
        self.users = User(id: 1, userName: "ujjwaall", name: "Ujjwalsingh Rajput", userRank:Leaderboard(points: Points(currLevelPoints: 40, totalPoints: 300), currRank: 1), level: Level(currLevel: 3, attempts: 5, time: Timer(), numberOfColors: 4, result: false), streak: Streak(startDate: Date(), currDays: 2, reward: Points(currLevelPoints: 40, totalPoints: 300)), userImageName: "Image")
    }
}
