//
//  ViewController.swift
//  ToDoList
//
//  Created by Anton Nepotenko on 2023-06-26.
//

import UIKit


class SignInViewController: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let defaults = UserDefaults.standard
        
        defaults.set("Anton@gmail.com", forKey: "login")
        defaults.set("test", forKey: "password")
    }
    
    @IBAction func registerButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToTaskVC", sender: self)
    }
    

    @IBAction func signInButtonPressed(_ sender: UIButton) {
    }
}

    


