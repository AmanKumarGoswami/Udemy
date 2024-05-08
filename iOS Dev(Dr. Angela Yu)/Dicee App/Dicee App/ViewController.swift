//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageViewOne: UIImageView!
    @IBOutlet weak var imageViewTwo: UIImageView!
    
    let diceArr = [
        UIImage(imageLiteralResourceName: "DiceOne"), UIImage(imageLiteralResourceName: "DiceTwo"), UIImage(imageLiteralResourceName: "DiceThree"), UIImage(imageLiteralResourceName: "DiceFour"), UIImage(imageLiteralResourceName: "DiceFive"), UIImage(imageLiteralResourceName: "DiceSix")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageViewOne.image = diceArr[0]
        imageViewTwo.image = diceArr[0]
    }
    
    
    @IBAction func rolllButtonTapped(_ sender: UIButton) {
        
//        imageViewOne.image = diceArr[Int.random(in: 0..<6)]
//        imageViewTwo.image = diceArr[Int.random(in: 0..<6)]
        
        imageViewOne.image = diceArr.randomElement()
        imageViewTwo.image = diceArr.randomElement()
    }
    

}

