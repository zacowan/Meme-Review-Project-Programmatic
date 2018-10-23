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
        view.backgroundColor = #colorLiteral(red: 0.9013727119, green: 0.897710084, blue: 0.9449579832, alpha: 1)
        for element in mainStoryboard.getViews() {
            view.addSubview(element)
        }
        setupLayout()
    }
    
    func setupLayout() {
        mainStoryboard.memeImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        mainStoryboard.memeImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        mainStoryboard.memeImageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        mainStoryboard.memeImageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        mainStoryboard.appTitleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        mainStoryboard.appTitleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30).isActive = true
    }


}

