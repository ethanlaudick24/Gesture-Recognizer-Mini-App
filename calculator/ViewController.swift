//
//  ViewController.swift
//  calculator
//
//  Created by ETHAN LAUDICK on 9/8/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var numberOne: UITextField!
    
    @IBOutlet weak var numberTwo: UITextField!
    
    @IBOutlet weak var outputText: UITextField!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    @IBAction func addAction(_ sender: Any) {
        let num1 = Double(numberOne.text!)!
        let num2 = Double(numberTwo.text!)!
        let sum = num1 + num2
        outputText.text = "\(sum)"
    }
    
    @IBAction func subtractAction(_ sender: Any) {
        let num1 = Double(numberOne.text!)!
        let num2 = Double(numberTwo.text!)!
        let difference = num1 - num2
        outputText.text = "\(difference)"
    }
    
    @IBAction func multiplyAction(_ sender: Any) {
        let num1 = Double(numberOne.text!)!
        let num2 = Double(numberTwo.text!)!
        let product = num1 * num2
        outputText.text = "\(product)"
    }
    
    @IBAction func divideAction(_ sender: Any) {
        let num1 = Double(numberOne.text!)!
        let num2 = Double(numberTwo.text!)!
        let qoutient = num1 / num2
        outputText.text = "\(qoutient)"
    }

    @IBAction func permOfRectAction(_ sender: Any) {
        let num1 = Double(numberOne.text!)!
        let num2 = Double(numberTwo.text!)!
        let sum = (num1 * 2) + (num2 * 2)
        outputText.text = "\(sum)"
    }
    
    
    
    
    
    
}

