//
//  WelcomeViewController.swift
//  LogInApp
//
//  Created by Екатерина Платонова on 02.10.2022.
//

import SwiftUI

final class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeMessege: UILabel!
    @IBOutlet var backgroundView: UIView!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeMessege.text = "Welcome, " + userName + "!"
    }
    
   private func setGradientBackground() {
        let colorTop =  UIColor(.blue).cgColor
        let colorBottom = UIColor(.green).cgColor
                    
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorTop, colorBottom]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.frame = self.view.bounds
                
        self.view.layer.insertSublayer(gradientLayer, at:0)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        setGradientBackground()
        super.viewWillAppear(animated)
    }
}
