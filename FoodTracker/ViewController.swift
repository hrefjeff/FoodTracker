//
//  ViewController.swift
//  FoodTracker
//
//  Created by Jeffrey Allen on 3/2/17.
//  Copyright © 2017 Jeffrey Allen. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    // MARK: PROPERTIES
    // IBOutlet  : tells Xcode that you can connect to the nameTextField
    //             from the interface builder
    //  weak     : does not prevent the system from
    //             deallocating the referenced object
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // Handle the text field’s user input through delegate callbacks.
        nameTextField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the keyboard
        textField.resignFirstResponder()
        return true;
    }
    
    // Called when textfield loses first responder status
    func textFieldDidEndEditing(_ textField: UITextField) {
        mealNameLabel.text = textField.text;
    }
    
    
    // MARK: ACTIONS
    // sender : refers to the object that was responsible for triggering the action
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        mealNameLabel.text = "Default Text"
    }
    


}

