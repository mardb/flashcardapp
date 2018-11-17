//
//  ViewController.swift
//  flashcards
//
//  Created by Marlene  on 10/13/18.
//  Copyright © 2018 Marlene Guzman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // make variables for all components
    @IBOutlet weak var frontLabel: UILabel!
    @IBOutlet weak var backLabel: UILabel!
    @IBOutlet weak var card: UIView!
    
    @IBOutlet weak var btnOptionOne: UIButton!
    @IBOutlet weak var btnOptionTwo: UIButton!
    @IBOutlet weak var btnOptionThree: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //        card.clipsToBounds = true
        frontLabel.clipsToBounds = true
        frontLabel.layer.cornerRadius = 20.0
        // make back label rounded
        backLabel.clipsToBounds = true
        backLabel.layer.cornerRadius = 20.0
        // make card rounded
        card.layer.cornerRadius = 20.0
        card.layer.shadowRadius = 15.0
        card.layer.shadowOpacity = 0.2
        
        // make buttons rounded
        btnOptionOne.layer.cornerRadius = 20.00
        btnOptionOne.layer.borderWidth = 3.0
        btnOptionOne.layer.borderColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        
        
        btnOptionTwo.layer.cornerRadius = 20.00
        btnOptionTwo.layer.borderWidth = 3.0
        btnOptionTwo.layer.borderColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        
        btnOptionThree.layer.cornerRadius = 20.00
        btnOptionThree.layer.borderWidth = 3.0
        btnOptionThree.layer.borderColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        
    }
    
    // action to do on flashcard tap
    @IBAction func didTapOnFlashcard(_ sender: Any) {
        if(frontLabel.isHidden == true) {
            self.frontLabel.isHidden = false
        } else {
            self.frontLabel.isHidden = true
        }
    }
    
    // action to do on answer taps
    @IBAction func didTapOptionOne(_ sender: Any) {
        btnOptionOne.isHidden = true
    }
    
    @IBAction func didTapOptionTwo(_ sender: Any) {
        frontLabel.isHidden = true
    }
    
    @IBAction func didTapOptionThree(_ sender: Any) {
        btnOptionThree.isHidden = true
    }
    
    // action to do on pencil emoji
    func updateFlashcard(question: String, answer: String, extraAnswer1: String, extraAnswer2: String) {
        frontLabel.text = question
        backLabel.text = answer
        
        btnOptionOne.setTitle(extraAnswer1, for: .normal)
        btnOptionTwo.setTitle(answer, for: .normal)
        btnOptionThree.setTitle(extraAnswer2, for: .normal)
    }
    
    // this function makes the creationViewController accessible to the main viewController
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let navigationController = segue.destination as! UINavigationController
        
        let creationController = navigationController.topViewController as! CreationViewController
        
        creationController.flashCardController = self
        
        //separate different seques with different actions
        //user wants to edit, page must be pre populated with data
        
        
        
    }
    
}
