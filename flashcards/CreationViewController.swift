//
//  CreationViewController.swift
//  flashcards
//
//  Created by Marlene  on 10/27/18.
//  Copyright © 2018 Marlene Guzman. All rights reserved.
//

import UIKit

class CreationViewController: UIViewController {
    
    var flashCardController: ViewController!
    
    @IBOutlet weak var questionTextField: UITextField!
    @IBOutlet weak var answerTextField: UITextField!
    @IBOutlet weak var extraAnswer1: UITextField!
    @IBOutlet weak var extraAnswer2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func didTapOnCancel(_ sender: Any) {
        dismiss(animated:true)
    }
    
    @IBAction func didTapOnDone(_ sender: Any) {
        let questionText = questionTextField.text
        let answerText = answerTextField.text
        let extraAns1 = extraAnswer1.text
        let extraAns2 = extraAnswer2.text
        
        flashCardController.updateFlashcard(question: questionText!, answer: answerText!, extraAnswer1: extraAns1!, extraAnswer2: extraAns2!)
        dismiss(animated: true)
    }
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
