//
//  MainStoryboard.swift
//  Meme Review Prog
//
//  Created by Zachary Cowan on 10/22/18.
//  Copyright © 2018 Zachary Cowan. All rights reserved.
//

import Foundation
import UIKit

struct MainStoryboard {
    
    public let memeImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.cornerRadius = 20
        imageView.clipsToBounds = true
        imageView.backgroundColor = #colorLiteral(red: 0.1789666667, green: 0.1716, blue: 0.26, alpha: 1)
        return imageView
    }()
    
    public let appTitleLabel: UILabel = {
        let label = UILabel()
        label.text = "Meme Review P"
        label.textAlignment = .center
        label.font = UIFont(name: "AvenirNext-Medium", size: 36)
        label.textColor = #colorLiteral(red: 0.1789666667, green: 0.1716, blue: 0.26, alpha: 1)
        return label
    }()
    
    public let memeNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Meme Name"
        label.textAlignment = .center
        label.font = UIFont(name: "AvenirNext-Bold", size: 21)
        label.textColor = #colorLiteral(red: 0.1789666667, green: 0.1716, blue: 0.26, alpha: 1)
        return label
    }()
    
    public let memeScoreLabel: UILabel = {
        let label = UILabel()
        label.text = "Score: nil"
        label.textAlignment = .right
        label.font = UIFont(name: "AvenirNext-Heavy", size: 14)
        label.textColor = #colorLiteral(red: 0.1789666667, green: 0.1716, blue: 0.26, alpha: 1)
        return label
    }()
    
    public let memeLevelLabel: UILabel = {
        let label = UILabel()
        label.text = "MEME LEVEL"
        label.textAlignment = .left
        label.font = UIFont(name: "AvenirNextCondensed-Regular", size: 17)
        label.textColor = #colorLiteral(red: 0.1789666667, green: 0.1716, blue: 0.26, alpha: 1)
        return label
    }()
    
    public let memeNewScoreLabel: UILabel = {
        let label = UILabel()
        label.text = "New Score: nil"
        label.textAlignment = .left
        label.font = UIFont(name: "AvenirNext-Heavy", size: 14)
        label.textColor = #colorLiteral(red: 0.1789666667, green: 0.1716, blue: 0.26, alpha: 1)
        return label
    }()
    
    public let nextMemeButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Next Meme", for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.3568627451, green: 0.3176470588, blue: 0.8235294118, alpha: 1)
        button.titleLabel?.font = UIFont(name: "AvenirNext-Bold", size: 17)
        button.layer.cornerRadius = 35
        button.setTitleColor(#colorLiteral(red: 0.9013727119, green: 0.897710084, blue: 0.9449579832, alpha: 1), for: .normal)
        return button
    }()
    
    public let newScoreSlider: UISlider = {
        let slider = UISlider()
        slider.minimumValue = 0
        slider.maximumValue = 10
        slider.value = 5
        slider.minimumTrackTintColor = #colorLiteral(red: 0.3568627451, green: 0.3176470588, blue: 0.8235294118, alpha: 1)
        slider.maximumTrackTintColor = #colorLiteral(red: 0.3568627451, green: 0.3176470588, blue: 0.8235294118, alpha: 0.3049900968)
        slider.thumbTintColor = #colorLiteral(red: 0.3568627451, green: 0.3176470588, blue: 0.8235294118, alpha: 1)
        return slider
    }()
    
    public func getViews() -> [UIView] {
        let elements: [UIView] = [memeImageView, appTitleLabel, memeNameLabel, memeScoreLabel, memeLevelLabel, memeNewScoreLabel, nextMemeButton, newScoreSlider]
        for element in elements {
            element.translatesAutoresizingMaskIntoConstraints = false
        }
        return elements
    }
    
}
