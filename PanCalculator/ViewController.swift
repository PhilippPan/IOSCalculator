//
//  ViewController.swift
//  PanCalculator
//
//  Created by user on 24/12/2020.
//

import UIKit

class ViewController: UIViewController {
    
    var operand = ""
    var numberOne = ""
    var numberTwo = ""
    
    @IBOutlet weak var resultLabel: UILabel!

    @IBAction func inputOperand(_ sender: UIButton) {
        operand = sender.titleLabel?.text as! String
    }
    @IBAction func clearAction(_ sender: UIButton) {
        operand = ""
        numberOne = ""
        numberTwo = ""
        resultLabel.text = "0"
    }
    @IBAction func resultAction(_ sender: UIButton) {
        
        var result = 0.0
        if !numberTwo.isEmpty {
            switch operand {
            case "+":
                result = Double(numberOne)! + Double(numberTwo)!
            case "-":
                result = Double(numberOne)! - Double(numberTwo)!
            case "*":
                result = Double(numberOne)! * Double(numberTwo)!
            case "/":
                result = Double(numberOne)! / Double(numberTwo)!
            default:
                break
            }
            
            if result.truncatingRemainder(dividingBy: 1.0) == 0.0 {
                resultLabel.text = String(Int(result))
            } else {
                resultLabel.text = String(result)
            }
            numberOne = ""
            numberTwo = ""
        }
    }
    @IBAction func inputNumber(_ sender: UIButton) {
        if resultLabel.text != "0" {
            resultLabel.text = "0"
        }
        if operand.isEmpty {
            numberOne = numberOne + (sender.titleLabel?.text)!
            resultLabel.text = numberOne
        } else {
            numberTwo = numberTwo + (sender.titleLabel?.text)!
            resultLabel.text = numberTwo
        }
        
    }
}

