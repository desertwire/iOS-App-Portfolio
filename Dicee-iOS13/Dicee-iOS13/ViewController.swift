//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    	
    var leftDiceNumber = 0
    var rightDiceNumber = 5
    
    // When the view loads up
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //WHO           WHAT        VALUE
        diceImageView1.image = #imageLiteral(resourceName: "DiceSix")
        diceImageView2.image = #imageLiteral(resourceName: "DiceFive")
        //diceImageViewOne.alpha = 0.5
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        //Swift requires equal spacing on both sides of equal sign
        //var - changes
        //let - non-changing
        let diceArray = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
        //randomElement() detects the amount of elements inside the array
        diceImageView1.image = diceArray.randomElement()
        diceImageView2.image = diceArray[Int.random(in: 0...5)]
        
    }
    
}

