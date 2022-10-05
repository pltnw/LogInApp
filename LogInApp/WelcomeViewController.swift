//
//  WelcomeViewController.swift
//  LogInApp
//
//  Created by Екатерина Платонова on 02.10.2022.
//

import SwiftUI

final class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeMessege: UILabel!
    
    var userName: String!
    
    private let primaryColor = UIColor (
        red: 32/255,
        green: 178/255,
        blue: 170/255,
        alpha: 1)
    
    private let secondaryColor = UIColor (
        red: 255/255,
        green: 239/255,
        blue: 213/255,
        alpha: 1)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor: secondaryColor, bottomColor: primaryColor)
        welcomeMessege.text = "Welcome, " + userName + "!"
    }
}

extension UIView {
    func addVerticalGradientLayer(topColor: UIColor, bottomColor: UIColor) {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [topColor.cgColor, bottomColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}
