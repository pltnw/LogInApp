//
//  WelcomeViewController.swift
//  LogInApp
//
//  Created by Екатерина Платонова on 02.10.2022.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeMessege: UILabel!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeMessege.text = "Welcome, " + userName + "!"
    }
    
}
