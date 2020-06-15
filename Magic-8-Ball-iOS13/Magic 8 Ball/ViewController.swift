//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Angela Yu on 14/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var displayLabel: UILabel!
    
    @IBOutlet weak var eightBall: UIImageView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        eightBall.image = #imageLiteral(resourceName: "ball1")
    }
    
    @IBAction func clickBall(_ sender: Any)
    {
        let ballArray = [#imageLiteral(resourceName: "ball1"), #imageLiteral(resourceName: "ball2"), #imageLiteral(resourceName: "ball5"), #imageLiteral(resourceName: "ball3"), #imageLiteral(resourceName: "ball5")]
        eightBall.isHidden = false
        eightBall.image = ballArray.randomElement()
    }
}

