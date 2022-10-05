//
//  ViewController.swift
//  LogInApp
//
//  Created by Екатерина Платонова on 02.10.2022.
//

import UIKit

class LogInViewController: UIViewController {

    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private let nameOfUser = "Kate"
    private let passwordOfUser = "123"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeViewController = segue.destination as? WelcomeViewController else { return }
        welcomeViewController.userName = nameOfUser
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
 
    @IBAction func logInButtonDidTapped() {
        guard userNameTF.text == nameOfUser, passwordTF.text == passwordOfUser else {
            showAlert(withTitle: "Invalid login or password",
                      andMessage: "Please, enter correct login or password",
                      textField: passwordTF)
            return
        }
        performSegue(withIdentifier: "showWelcomeVC", sender: nil)
    }
    
    @IBAction func forgotRegisterData(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(withTitle: "Oops!", andMessage: "Your name is \(nameOfUser) 👽")
        : showAlert(withTitle: "Oops!", andMessage: "Your password is \(passwordOfUser) 🦀")
    }
 
    private func showAlert(withTitle title: String, andMessage message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

