//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    
    @IBOutlet weak var zeroPctButton: UIButton!
    
    @IBOutlet weak var tenPctButton: UIButton!
    
    @IBOutlet weak var twentyPctButton: UIButton!

    @IBOutlet weak var splitNumberLabel: UILabel!

    @IBAction func tipChanged(_ sender: UIButton) {
        
        billTextField.endEditing(true)
        
        if sender.currentTitle == "0%" {
            zeroPctButton.isSelected = true
            tenPctButton.isSelected = false
            twentyPctButton.isSelected = false
            print("0.0")
            
        } else if sender.currentTitle == "10%" {
            zeroPctButton.isSelected = false
            tenPctButton.isSelected = true
            twentyPctButton.isSelected = false
            print("0.1")
        } else {
            zeroPctButton.isSelected = false
            tenPctButton.isSelected = false
            twentyPctButton.isSelected = true
            print("0.2")
        }
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumberLabel.text = String(format: "%.0f", sender.value)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        var bill = Double(billTextField.text!)
        var numberOfPeople = Double(splitNumberLabel.text!)
        var total = 0.0
        var tipPercentage = 0.0
        if zeroPctButton.isSelected {
            total = bill!/numberOfPeople!
        } else if tenPctButton.isSelected {
            tipPercentage = 0.1
            total = (bill! + (bill! * tipPercentage))/numberOfPeople!
        } else {
            tipPercentage = 0.2
            total = (bill! + (bill! * tipPercentage))/numberOfPeople!
        }
        
        print(total)
    }
    
}

