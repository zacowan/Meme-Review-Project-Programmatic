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
    let memeReview = MemeReview(withMemes: ["Dos Equis", "Drunk Baby", "Football", "Frozone", "Shaq", "Office", "Kowalski", "England"])

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = #colorLiteral(red: 0.9013727119, green: 0.897710084, blue: 0.9449579832, alpha: 1)
        for element in mainStoryboard.getViews() {
            view.addSubview(element)
        }
        setupLayout()
        updateMeme()
        mainStoryboard.nextMemeButton.addTarget(self, action: #selector(nextMemeButtonPressed), for: .touchUpInside)
        mainStoryboard.newScoreSlider.addTarget(self, action: #selector(sliderMoved), for: .touchDragInside)
    }
    
    @objc private func nextMemeButtonPressed() {
        memeReview.nextMeme(newScore: Int(mainStoryboard.newScoreSlider.value))
        updateMeme()
    }
    
    @objc private func sliderMoved() {
        updateNewScoreLabel()
    }
    
    private func updateMeme() {
        let meme = memeReview.getMeme()
        let memeName = meme.getName()
        let memeScore = meme.getScore()
        
        mainStoryboard.memeNameLabel.text = memeName
        mainStoryboard.memeScoreLabel.text = "Score: \(memeScore)/10"
        mainStoryboard.memeImageView.image = UIImage(named: memeName)
        mainStoryboard.newScoreSlider.value = Float(memeScore)
        mainStoryboard.memeLevelLabel.text = meme.getMemeLevel()
        updateNewScoreLabel()
    }
    
    private func updateNewScoreLabel() {
        mainStoryboard.memeNewScoreLabel.text = "New Score: \(Int(mainStoryboard.newScoreSlider.value))/10"
    }
    
    private func setupLayout() {
        // Meme Image
        mainStoryboard.memeImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        mainStoryboard.memeImageView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 60).isActive = true
        mainStoryboard.memeImageView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -60).isActive = true
        mainStoryboard.memeImageView.heightAnchor.constraint(equalTo: mainStoryboard.memeImageView.widthAnchor).isActive = true
        
        // App Title
        mainStoryboard.appTitleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        mainStoryboard.appTitleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30).isActive = true
        
        // Meme Name
        mainStoryboard.memeNameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        mainStoryboard.memeNameLabel.bottomAnchor.constraint(equalTo: mainStoryboard.memeImageView.topAnchor, constant: -40).isActive = true
        
        // Meme Score
        mainStoryboard.memeScoreLabel.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -60).isActive = true
        mainStoryboard.memeScoreLabel.bottomAnchor.constraint(equalTo: mainStoryboard.memeImageView.topAnchor, constant: -10).isActive = true
        
        // Meme Level
        mainStoryboard.memeLevelLabel.bottomAnchor.constraint(equalTo: mainStoryboard.memeImageView.topAnchor, constant: -10).isActive = true
        mainStoryboard.memeLevelLabel.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 60).isActive = true
        
        // New Meme Score
        mainStoryboard.memeNewScoreLabel.topAnchor.constraint(equalTo: mainStoryboard.memeImageView.bottomAnchor, constant: 10).isActive = true
        mainStoryboard.memeNewScoreLabel.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 60).isActive = true
        
        // New Score Slider
        mainStoryboard.newScoreSlider.topAnchor.constraint(equalTo: mainStoryboard.memeNewScoreLabel.bottomAnchor, constant: 10).isActive = true
        mainStoryboard.newScoreSlider.leftAnchor.constraint(equalTo: mainStoryboard.memeImageView.leftAnchor).isActive = true
        mainStoryboard.newScoreSlider.rightAnchor.constraint(equalTo: mainStoryboard.memeImageView.rightAnchor).isActive = true
        
        // Next Meme Button
        mainStoryboard.nextMemeButton.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 60).isActive = true
        mainStoryboard.nextMemeButton.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -60).isActive = true
        mainStoryboard.nextMemeButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20).isActive = true
        mainStoryboard.nextMemeButton.heightAnchor.constraint(equalToConstant: 70).isActive = true
    }


}

