//
//  Meme.swift
//  Meme Review
//
//  Created by Zachary Cowan on 10/19/18.
//  Copyright © 2018 Zachary Cowan. All rights reserved.
//

import Foundation

class Meme {
    private var name: String
    private var score: Int
        
    init(named name: String) {
        self.name = name
        score = Int.random(in: 0 ... 10)
    }
    
    public func getName() -> String {
        return name
    }
    
    public func getScore() -> Int {
        return score
    }
    
    public func setScore(score newScore: Int) {
        score = newScore
    }
    
    public func getMemeLevel() -> String {
        var level: String
        if score >= 9 {
            level = "DANK MEME"
        } else if score >= 7 {
            level = "SPICY MEME"
        } else if score >= 4 {
            level = "JUST MEME"
        } else if score >= 2 {
            level = "POOR MEME"
        } else {
            level = "DEAD MEME"
        }
        return level
    }
}
