//
//  ViewController.swift
//  ToDoList
//
//  Created by Anton Nepotenko on 2023-06-26.
//

import UIKit


class SignInViewController: UIViewController {
    
    var users = [User]()
    
    var usersIndex = Int()
    
    let defaults = UserDefaults.standard
    
    
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let dict = ["login":"Anton@gmail.com","password":"test"]
        defaults.set(dict, forKey: "SavedDict")
        
        
    }
    
    @IBAction func registerButtonPressed(_ sender: UIButton) {
        
        if emailTextField.text == ""
        {let alert = UIAlertController(title: "Missing email", message: "Please write your email.", preferredStyle: UIAlertController.Style.alert)}
        else if passwordTextField.text == ""
        {let alert = UIAlertController(title: "Missing password", message: "Please write your password.", preferredStyle: UIAlertController.Style.alert)}
        
        let defaults = UserDefaults.standard
        
        let dict = ["login":users.login,"password":users.password]
        defaults.set(dict, forKey: "SavedDict")
        
        self.performSegue(withIdentifier: "goToTaskVC", sender: self)
    }
    

    @IBAction func signInButtonPressed(_ sender: UIButton) {
        let savedDict = defaults.object(forKey: "SavedDict")
    }
}

    


