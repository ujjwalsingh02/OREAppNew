//
//  gameLogic.swift
//  OnMyOwnTry
//
//  Created by Ujjwalsingh Rajput on 30/03/23.
//

import Foundation
import UIKit


// code generate karne ke liye
func generateSecretCode() -> [String]{
    var secretCode: [String] = []
    let colors : [String] = ["red", "green", "vibrant yellow", "dark blue", "cyan blue", "dark magenta", "orange", "brown"]
    while secretCode.count<4 {
        let randomIndex = Int.random(in: 0..<colors.count)
        let temp : String = colors[randomIndex]
        if !secretCode.contains(temp){
            secretCode.append(temp)
        }
    }
    
    return secretCode
}

// dekhne ke liye count 4 hai ya nhi
func checkCount() -> Bool{
    var count = 0
    for i in guess{
        if i != "" {
            count = count + 1
        }
    }
    print(count)
    if count == 4{
        return true
    }
    else{
        return false
    }
}


// secretCode and guess ko compare karne ke liye
func compareGuessToSecretCode(guess: [String], secretCode: [String]) -> (cpos: Int, ccol: Int) {
    var cpos = 0 // Counter for number of elements in the correct position
    var ccol = 0 // Counter for number of elements present in the code but in the wrong position
    
    
    for i in 0..<guess.count {
        // Check if the current element is present in the secretCode
        if secretCode.contains(guess[i]) {
            // If the element is in the same position, increment cpos
            if guess[i] == secretCode[i] {
                cpos += 1
            } else {
                // If the element is in a different position, increment ccol
                ccol += 1
            }
        }
    }
    
    return (cpos, ccol) // Return the tuple containing cpos and ccol
}


