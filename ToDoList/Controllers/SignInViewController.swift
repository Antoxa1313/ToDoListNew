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
 
    func showErrorAlert(withDescription: String) {
        let alert = UIAlertController(
            title: "Error",
            message: description,
            preferredStyle: UIAlertController.Style.alert
        )
        self.present(alert, animated: true, completion: nil)
    }
    
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        users = UserDefaultsManager.shared.getUsers()
        print("Users: \(users)")
    }
    
    @IBAction func registerButtonPressed(_ sender: UIButton) {
        
        if emailTextField.text == "" {
            showErrorAlert(withDescription: "Please write your email.")
        } else if passwordTextField.text == "" {
            showErrorAlert(withDescription: "Please write your password.")
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
                showErrorAlert(withDescription: "User already exist.")
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
            showErrorAlert(withDescription: "Please write your email.")
        } else if passwordTextField.text == "" {
            showErrorAlert(withDescription: "Please write your password.")
        } else {
            if (users.first(where: {$0.login == emailTextField.text}) != nil) &&
                (users.first(where: {$0.password == passwordTextField.text}) != nil)
//            for user in users where users[i].login == emailTextField && users[i].password == passwordTextField
            { let vc = storyboard?.instantiateViewController(withIdentifier: "task") as! TaskViewController
                navigationController?.pushViewController(vc, animated: true)
            }
        }
        
        emailTextField.text = ""
        passwordTextField.text = ""
        
    }
}

    


