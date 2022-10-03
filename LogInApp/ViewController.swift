//
//  ViewController.swift
//  LogInApp
//
//  Created by Екатерина Платонова on 02.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeViewController = segue.destination as? WelcomeViewController else { return }
        welcomeViewController.userName = userNameTF.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
 
    @IBAction func logInButtonDidTapped() {
        guard let userName = userNameTF.text, let password = passwordTF.text else { return }
        if userName != "User" || password != "Password" {
            showAlert(withTitle: "Invalid login or password", andMessage: "Please, enter correct login or password")
            passwordTF.text = ""
        }
    }
    
    @IBAction func forgotNameDidTapped() {
        showAlert(withTitle: "Oops!", andMessage: "Your name is User 😊")
    }
    
    @IBAction func forgotPasswordDidTapped() {
        showAlert(withTitle: "Oops!", andMessage: "Your password is Password 😊")
    }
}

extension ViewController {
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
