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
    var points : Points
    var userRank : Leaderboard
    var level : Level
    var streak : Streak
    var userImageName : String
}

struct Level{
    var currLevel : Int
    var attempts : Int
    var time : Int
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
    var totalUser: Int
}

var user1=User(id: 1, userName: "ujjwaall", name: "Ujjwalsingh Rajput",points: Points(currLevelPoints: 10, totalPoints: 1000), userRank: Leaderboard(points: Points(currLevelPoints: 10, totalPoints: 1000), currRank: 35, totalUser: 180), level: Level(currLevel: 4, attempts: 2, time: 600, numberOfColors: 8, result: false), streak: Streak(startDate: Date(), currDays: 0, reward: Points(currLevelPoints: 10, totalPoints: 1000)), userImageName: "ORE 2 Small")
struct DataModel{
//    private var users : User
    
}
