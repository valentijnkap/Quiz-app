//
//  ViewController.swift
//  Quiz app
//
//  Created by Valentijn Kap on 11-11-15.
//  Copyright © 2015 Valentijn Kap. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var QuestionSpace: UILabel!
    @IBOutlet weak var Answer1: UIButton!
    @IBOutlet weak var Answer2: UIButton!
    @IBOutlet weak var Answer3: UIButton!
    @IBOutlet weak var Answer4: UIButton!
    @IBOutlet weak var Feedback: UILabel!
    
    var CorrectAnswer = String()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        generateQuestion()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    func generateQuestion() {
        var RandomQuestion = arc4random() % 3
        RandomQuestion += 1
        
        switch(RandomQuestion) {
            
        case 1:
            QuestionSpace.text = "Welke tag zou je het beste kunnen gebruiken voor een alinea?"
            Answer1.setTitle("<p>", forState: UIControlState.Normal)
            Answer2.setTitle("<article>", forState: UIControlState.Normal)
            Answer3.setTitle("<section>", forState: UIControlState.Normal)
            Answer4.setTitle("<div>", forState: UIControlState.Normal)
            CorrectAnswer = "1"
            break
            
        case 2:
            QuestionSpace.text = "Hoevaak mag je een <h1> gebruiken?"
            Answer1.setTitle("1 keer", forState: UIControlState.Normal)
            Answer2.setTitle("4 keer", forState: UIControlState.Normal)
            Answer3.setTitle("zovaak mogelijk", forState: UIControlState.Normal)
            Answer4.setTitle("bij iedere <article>", forState: UIControlState.Normal)
            CorrectAnswer = "4"
            break
            
        case 3:
            QuestionSpace.text = "Hoe markeer je een een woord in een alinea?"
            Answer1.setTitle("<i>", forState: UIControlState.Normal)
            Answer2.setTitle("<em>", forState: UIControlState.Normal)
            Answer3.setTitle("<br>", forState: UIControlState.Normal)
            Answer4.setTitle("<style>", forState: UIControlState.Normal)
            CorrectAnswer = "2"
            break
            
        default:
            
            break
            
        }
    }
    
    
    @IBAction func Answer1WhenClick(sender: AnyObject) {
        if (CorrectAnswer == "1") {
            Feedback.text = "Het antwoord is goed"
        }
        else {
           Feedback.text = "Jammer, het antwoord is fout"
        }
    }

    @IBAction func Answer2WhenClick(sender: AnyObject) {
        if (CorrectAnswer == "2") {
            Feedback.text = "Het antwoord is goed"
        }
        else {
            Feedback.text = "Jammer, het antwoord is fout"
        }
        
    }
    
    
    @IBAction func Answer3WhenClick(sender: AnyObject) {
        if (CorrectAnswer == "3") {
            Feedback.text = "Het antwoord is goed"
        }
        else {
            Feedback.text = "Jammer, het antwoord is fout"
        }
        
    }
    
    @IBAction func Answer4WhenClick(sender: AnyObject) {
        if (CorrectAnswer == "4") {
            Feedback.text = "Het antwoord is goed"
        }
        else {
            Feedback.text = "Jammer, het antwoord is fout"
        }
        
    }
    
    
    @IBAction func NextQuestion(sender: AnyObject) {
        generateQuestion()
        Feedback.text = "..."
    }
    
}

