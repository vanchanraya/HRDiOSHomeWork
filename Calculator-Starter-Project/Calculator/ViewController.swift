//
//  ViewController.swift
//  Calculator
//
//  Created by Soeng Saravit on 10/25/17.
//  Copyright © 2017 Soeng Saravit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var functionLabel: UILabel!
    @IBOutlet weak var showLabel: UILabel!
    @IBOutlet weak var clearButton: customButton!
    @IBOutlet weak var plusMinusButton: customButton!
    @IBOutlet weak var percentageButton: customButton!
    @IBOutlet weak var divideButton: customButton!
    @IBOutlet weak var multiplyButton: customButton!
    @IBOutlet weak var minusButton: customButton!
    @IBOutlet weak var plusButton: customButton!
    @IBOutlet weak var equalButton: customButton!
    @IBOutlet weak var oneButton: customButton!
    @IBOutlet weak var twoButton: customButton!
    @IBOutlet weak var threeButton: customButton!
    @IBOutlet weak var fourButton: customButton!
    @IBOutlet weak var fiveButton: customButton!
    @IBOutlet weak var sixButton: customButton!
    @IBOutlet weak var sevenButton: customButton!
    @IBOutlet weak var eightButton: customButton!
    @IBOutlet weak var nineButton: customButton!
    @IBOutlet weak var zeroButton: customButton!
    @IBOutlet weak var dotButton: customButton!
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func ClearButton(_ sender: Any) {
        showLabel.text = "0"
    }
    
    @IBAction func OneButton(_ sender: Any) {
        showLabel.text = "1"
    }
    
    @IBAction func TwoButton(_ sender: Any) {
        showLabel.text = "2"
    }
    
    @IBAction func ThreeButton(_ sender: Any) {
        showLabel.text = "3"
    }
    
    @IBAction func FourButton(_ sender: Any) {
        showLabel.text = "4"
    }
    
    @IBAction func FiveButton(_ sender: Any) {
        showLabel.text = "5"
    }
    
    @IBAction func SixButton(_ sender: Any) {
        showLabel.text = "6"
    }
    
    @IBAction func SevenButton(_ sender: Any) {
        showLabel.text = "7"
    }
    
    @IBAction func EightButton(_ sender: Any) {
        showLabel.text = "8"
    }
    
    @IBAction func NineButton(_ sender: Any) {
        showLabel.text = "9"
    }
    
}

@IBDesignable class customButton: UIButton {
    
    @IBInspectable
    public var cornerRadius: CGFloat = 0.0 {
        didSet {
           self.layer.cornerRadius = self.cornerRadius
        }
    }
    
}


