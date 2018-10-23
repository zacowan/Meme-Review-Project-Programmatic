//
//  MemeReview.swift
//  Meme Review
//
//  Created by Zachary Cowan on 10/20/18.
//  Copyright © 2018 Zachary Cowan. All rights reserved.
//

import Foundation

class MemeReview {
    private var memesList = [Meme]()
    private var currentMeme: Int
    
    init(withMemes memeNames: [String]) {
        for name in memeNames {
            memesList.append(Meme(named: "\(name) Meme"))
        }
        currentMeme = 0
    }
    
    public func nextMeme(newScore: Int) {
        memesList[currentMeme].setScore(score: newScore)
        currentMeme = (currentMeme >= memesList.count - 1) ? 0 : currentMeme + 1
    }
    
    public func getMeme() -> Meme {
        return memesList[currentMeme]
    }
}
