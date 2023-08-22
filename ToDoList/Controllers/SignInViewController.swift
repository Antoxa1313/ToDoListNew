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
 
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        users = UserDefaultsManager.shared.getUsers()
        print("Users: \(users)")
    }
    
    @IBAction func registerButtonPressed(_ sender: UIButton) {
        
        if emailTextField.text == "" {
            let alert = UIAlertController(
                title: "Error",
                message: "Please write your email.",
                preferredStyle: UIAlertController.Style.alert
            )
            self.present(alert, animated: true, completion: nil)
        } else if passwordTextField.text == "" {
            let alert = UIAlertController(
                title: "Error",
                message: "Please write your password.",
                preferredStyle: UIAlertController.Style.alert
            )
            self.present(alert, animated: true, completion: nil)
        } else if users.isEmpty == true {
            users.append(
                User(
                    login: emailTextField.text ?? "",
                    password: passwordTextField.text ?? ""
                )
            )
            UserDefaultsManager.shared.setUsers(users)
            emailTextField.text = ""
            passwordTextField.text = ""
            
        } else {
            users = UserDefaultsManager.shared.getUsers()
            print("Users: \(users)")
            
            if users.contains(where: {$0.login == emailTextField.text}) {
                let alert = UIAlertController(
                    title: "Error",
                    message: "User already exist.",
                    preferredStyle: UIAlertController.Style.alert
                )
                self.present(alert, animated: true, completion: nil)
            } else {
                users.append(
                    User(
                        login: emailTextField.text ?? "",
                        password: passwordTextField.text ?? ""
                    )
                )
                UserDefaultsManager.shared.setUsers(users)
                emailTextField.text = ""
                passwordTextField.text = ""
            }
        }
    }

    

    @IBAction func signInButtonPressed(_ sender: UIButton) {
       
        if emailTextField.text == "" {
            let alert = UIAlertController(
                title: "Error",
                message: "Please write your email.",
                preferredStyle: UIAlertController.Style.alert
            )
            self.present(alert, animated: true, completion: nil)
        } else if passwordTextField.text == "" {
            let alert = UIAlertController(
                title: "Error",
                message: "Please write your password.",
                preferredStyle: UIAlertController.Style.alert
            )
            self.present(alert, animated: true, completion: nil)
        } else {
            for i in users where users[i].login == emailTextField && users[i].password == passwordTextField {
                usersIndex = i
                let vc = storyboard?.instantiateViewController(withIdentifier: "task") as! TaskViewController
                navigationController?.pushViewController(vc, animated: true)
            }
        }
        
        emailTextField.text = ""
        passwordTextField.text = ""
        
    }
}

    


