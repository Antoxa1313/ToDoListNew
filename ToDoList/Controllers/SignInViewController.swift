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
        
        let dict = ["login":"Anton@gmail.com","password":"test"]
        defaults.set(dict, forKey: "SavedDict")
    }
    
    @IBAction func registerButtonPressed(_ sender: UIButton) {
        let defaults = UserDefaults.standard
        
        let dict = ["login":"Anton@gmail.com","password":"test"]
        defaults.set(dict, forKey: "SavedDict")
        
        self.performSegue(withIdentifier: "goToTaskVC", sender: self)
    }
    

    @IBAction func signInButtonPressed(_ sender: UIButton) {
        let savedDict = defaults.object(forKey: "SavedDict")
    }
}

    


