//
//  ViewController.swift
//  Meme Review Prog
//
//  Created by Zachary Cowan on 10/22/18.
//  Copyright © 2018 Zachary Cowan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let mainStoryboard = MainStoryboard()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = .yellow
        for element in mainStoryboard.getViews() {
            view.addSubview(element)
        }
        setupLayout()
    }
    
    func setupLayout() {
        mainStoryboard.memeImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        mainStoryboard.memeImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        mainStoryboard.memeImageView.widthAnchor.constraint(equalToConstant: 200)
        mainStoryboard.memeImageView.heightAnchor.constraint(equalToConstant: 200)
        
        mainStoryboard.appTitleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        mainStoryboard.appTitleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30)
    }


}

