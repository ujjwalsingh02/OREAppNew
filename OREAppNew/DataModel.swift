//
//  DataModel.swift
//  OREApp

import Foundation
import UIKit

struct User{
    let id : Int
    let userName : String
    let name : String
    var points : Points
    var userRank : Rank
    var level : Level
    var streak : Streak
    var userImageName : String
}

struct Rank{
    var currRank: Int
    var totalUser: Int
}

struct Level{
    var currLevel : Int
    var attempts : Int
   // var time : Int//Should we keep the time component?
    var numberOfColors : Int
    var locked : Bool
    var attempted : Bool
}

//struct Row{
//    var color1 = UIView
//    var color2 : UIView
//    var Color3 : UIView
//    var Color4 : UIView
//}

struct Points{
    var currLevelPoints : Int
    var totalPointsOfLevel : Int
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
//    var currRank : Int
//    var totalUser: Int
    var rank: Rank
    var user: User
    var image: String
}


var user1 = User(id: 1, userName: "ujjwaall", name: "Ujjwalsingh Rajput",points: Points(currLevelPoints: 10, totalPointsOfLevel: 50 ,totalPoints: 1000), userRank: (Rank(currRank: 1, totalUser: 75)), level: Level(currLevel: 4, attempts: 2, numberOfColors: 8, locked: false, attempted: true), streak: Streak(startDate: Date(), currDays: 0, reward: Points(currLevelPoints: 10, totalPointsOfLevel: 50, totalPoints: 1000)), userImageName: "ORE 2 Small")
//var user1=User(id: 1, userName: "ujjwaall", name: "Ujjwalsingh Rajput",points: Points(currLevelPoints: 10, totalPoints: 1000), level: Level(currLevel: 4, attempts: 2, time: 600, numberOfColors: 8, result: false), streak: Streak(startDate: Date(), currDays: 0, reward: Points(currLevelPoints: 10, totalPoints: 1000)), userImageName: "ORE 2 Small")

var level1 = Level(currLevel: 1, attempts: 5,numberOfColors: 8, locked: false, attempted: true)

var leaderBoard1 = Leaderboard(points: Points(currLevelPoints: 40, totalPointsOfLevel: 50,totalPoints: 1000), rank: Rank(currRank: 1, totalUser: 75), user: user1, image: "sample-profile")
struct DataModel{
//    private var users : User
    
}
