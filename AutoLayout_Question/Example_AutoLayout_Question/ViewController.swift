//
//  ViewController.swift
//  Example_AutoLayout_Question
//
//  Created by Soeng Saravit on 12/3/18.
//  Copyright © 2018 Soeng Saravit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayLabel: UILabel!
    
    var questionList = [
        "What is your name?",
        "When were you born?",
        "Where is your homeland?",
        "How do you get to school?",
        "Who is your teacher?",
        "Why do you study with him or her?"
    ]
    
    var i = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        displayLabel.text = questionList[i]
        
    }

    @IBAction func nextQuestion(_ sender: UIButton) {
        
        i += 1
        
        if(i>=questionList.count){
          i = 0
        }
        
        displayLabel.text = questionList[i]
        
    }
    
}

