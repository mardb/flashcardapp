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
    
    var newQuestion: String?
    var newAnswer: String?
    var newAns2: String?
    var newAns3: String?
    
    var addNew: Bool?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        questionTextField.text = newQuestion
        answerTextField.text = newAnswer
        extraAnswer1.text = newAns2
        extraAnswer2.text = newAns3
        
    }
    
    @IBAction func didTapOnCancel(_ sender: Any) {
        dismiss(animated:true)
    }
    
    @IBAction func didTapOnDone(_ sender: Any) {
        //get the text in the question field
        let newQuestion = questionTextField.text
        
        //get the text in the answer field
        let newAnswer = answerTextField.text
        let newAns2 = extraAnswer1.text
        let newAns3 = extraAnswer2.text
        
        let alert = UIAlertController(title: "Missing Text", message: "You must enter question, and 3 options for answers. 1 must be true and 2 must be false.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default))
        
        //check if empty // validate
        if(newQuestion == nil || newAnswer == nil || newQuestion!.isEmpty || newAnswer!.isEmpty || newAns2 == nil || newAns2!.isEmpty || newAns3 == nil ||  newAns3!.isEmpty){
            present(alert, animated: true)

        }else{
              // show an error message, else we want to do what we were doing before (calling the updateFlashcard function and dismissing).
            flashCardController.updateFlashcard(question: newQuestion!, answer: newAnswer!,  extraAnswer1: newAns2!, extraAnswer2: newAns3!)
            //, addNewCard: addNew!
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
}
