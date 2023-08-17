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
    
    let dict = ["login":"Anton@gmail.com","password":"test"]
 
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let dict = ["login":"Anton@gmail.com","password":"test"]
        defaults.set(dict, forKey: "SavedDict")
        
        
    }
    
    @IBAction func registerButtonPressed(_ sender: UIButton) {
        
        if emailTextField.text == ""
            
        {let alert = UIAlertController(title: "Error", message: "Please write your email.", preferredStyle: UIAlertController.Style.alert)
            
            self.present(alert, animated: true, completion: nil)
        }
        else if passwordTextField.text == ""
                    
        {let alert = UIAlertController(title: "Error", message: "Please write your password.", preferredStyle: UIAlertController.Style.alert)
            
            self.present(alert, animated: true, completion: nil)
        }
        
        else if users.contains(where: users.login == emailTextField.text)
        {let alert = UIAlertController(title: "Error", message: "Email already exists.", preferredStyle: UIAlertController.Style.alert)
            
            self.present(alert, animated: true, completion: nil)}
        
        else if users.contains(where: users.password == passwordTextField.text)
        {let alert = UIAlertController(title: "Error", message: "Email already exists.", preferredStyle: UIAlertController.Style.alert)
            
            self.present(alert, animated: true, completion: nil)}
        
        else if users.isEmpty == true {users.append(User(login: emailTextField.text ?? <#default value#>, password: passwordTextField.text ?? <#default value#>))}
        emailTextField.text = ""
        passwordTextField.text = ""
        let defaults = UserDefaults.standard
        
        let dict = ["login":"Anton@gmail.com","password":"test"]
        defaults.set(dict, forKey: "SavedDict")
        
        self.performSegue(withIdentifier: "goToTaskVC", sender: self)
    }
    

    @IBAction func signInButtonPressed(_ sender: UIButton) {
       
        if dict.isEmpty == false {}
        
        
        
        
        let savedDict = defaults.object(forKey: "SavedDict")
    }
}

    


