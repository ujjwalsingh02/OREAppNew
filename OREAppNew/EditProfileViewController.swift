//
//  EditProfileViewController.swift
//  OREAppNew
//
//  Created by Ujjwalsingh Rajput on 06/04/23.
//

import UIKit

class EditProfileViewController: UIViewController {

    @IBOutlet weak var confirmTextField: UITextField!
    @IBOutlet weak var editUsernameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func changeUsernameButtonPressed(_ sender: UIButton) {
        
        if editUsernameTextField.text == confirmTextField.text{
            
            let alert = UIAlertController(title: "Reset", message: "Are you sure you want to reset all your progress?", preferredStyle: .alert)
            
            let yesButton = UIAlertAction(title: "Yes", style: .default){
                (action) in
                
                    user1.userName = self.editUsernameTextField.text!
                
                let controller = self.storyboard?.instantiateViewController(withIdentifier: "settings") as! UIViewController
                
                controller.modalPresentationStyle = .fullScreen
                controller.modalTransitionStyle = .crossDissolve
                
                self.present(controller,animated: true,completion: nil)
                
                
            }
            //
            let noButton = UIAlertAction(title: "No", style: .default){
                (action) in
                
            }
            //
            alert.addAction(yesButton)
            alert.addAction(noButton)
            
            present(alert,animated: true,completion: nil)
            
        }
        else{
            
            let alert = UIAlertController(title: "Invalid Username", message: "Please enter same values in both the field.", preferredStyle: .alert)
            
        }
    }
    

}
