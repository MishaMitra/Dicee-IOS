//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit
       /*IBOutlets is allow me to reference UI elements from Interface Builder and change it from  code to design file*/
class ViewController: UIViewController {
    @IBOutlet weak var diceImageViewOne: UIImageView!
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    
   /*IBAction is allow me to limk triggers from screen (presses buttons) and put this information into my code*/

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        // diceArray is array of assets (images of dice with numbers 1..6). We use let - cause we don't need to mutate our Array
        let diceArray = [UIImage(imageLiteralResourceName: "DiceOne"),UIImage(imageLiteralResourceName: "DiceTwo"),UIImage(imageLiteralResourceName: "DiceThree"),UIImage(imageLiteralResourceName: "DiceFour"),UIImage(imageLiteralResourceName: "DiceFive"),UIImage(imageLiteralResourceName: "DiceSix")]
        
        // here we randomly cahnge our image of dices (left and right) in two different ways of codding using our diceArray
        diceImageViewOne.image = diceArray.randomElement()
        diceImageViewTwo.image = diceArray [Int.random (in: 0...5)]
    }
}

