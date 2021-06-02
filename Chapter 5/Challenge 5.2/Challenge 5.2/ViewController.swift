//
//  ViewController.swift
//  Challenge 5.2
//
//  Created by Илья Москалев on 26.05.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupView()
    }
    
    private func setupView() {
        let padding: CGFloat = 50.0
        
        let greenContainer: GreenContainerView = {
            let view = GreenContainerView()
            view.translatesAutoresizingMaskIntoConstraints = false
            return view
        }()
        
        view.backgroundColor = .yellow
        view.addSubview(greenContainer)
        NSLayoutConstraint.activate([
            greenContainer.topAnchor.constraint(equalTo: view.topAnchor, constant: padding),
            greenContainer.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
            greenContainer.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding),
            greenContainer.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.25)
        ])
    }

}

extension UIView {
   static func makeView(color: UIColor) -> UIView {
       let view = UIView()
       view.translatesAutoresizingMaskIntoConstraints = false
       view.backgroundColor = color
       return view
   }
}
