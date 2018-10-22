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
    let memeImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.cornerRadius = 20
        imageView.backgroundColor = .black
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    var appTitleLabel: UILabel = {
        let label = UILabel()
        label.text = "Meme Review"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        return label
    }()
    
    public func getViews() -> [UIView] {
        return [memeImageView, appTitleLabel]
    }
}
