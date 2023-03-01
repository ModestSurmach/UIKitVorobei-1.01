//
//  ViewController.swift
//  UIKitVorobei-1.01
//
//  Created by Modest Surmach on 01.03.2023.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        myView(sizeSide: 100)
        
    }
    
    
    
    func myView(sizeSide: CGFloat) {
        let myView = UIView()

        view.addSubview(myView)
        
        myView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([        myView.widthAnchor.constraint(equalToConstant: sizeSide),
                                             myView.heightAnchor.constraint(equalToConstant: sizeSide),
                                             myView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 100),
                                             myView.centerYAnchor.constraint(equalTo: view.centerYAnchor)])
        
        myView.layer.cornerRadius = Settings.shared.cornerRadius
        
        myView.layer.shadowColor = UIColor.black.cgColor
        myView.layer.shadowOpacity = 1
        myView.layer.shadowOffset = .zero
        myView.layer.shadowRadius = 10

        
        let gradient = CAGradientLayer()
        gradient.colors = [UIColor.yellow.cgColor, UIColor.red.cgColor]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 1, y: 1)
        gradient.frame = CGRect(x: 0, y: 0, width: sizeSide, height: sizeSide)
        gradient.cornerRadius = Settings.shared.cornerRadius
        myView.layer.addSublayer(gradient)
        
    }
    
    
    
}
