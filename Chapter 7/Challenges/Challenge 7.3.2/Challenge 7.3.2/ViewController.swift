//
//  ViewController.swift
//  Challenge 7.3.2
//
//  Created by Илья Москалев on 28.05.2021.
//

import UIKit

class ViewController: UIViewController {

    private let greenView: UIView = {
       let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .green
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupView()
    }
    
    private func setupView() {
        view.backgroundColor = .yellow
        view.addSubview(greenView)
        
        let greenLeadingConstraint = greenView.leadingAnchor.constraint(equalTo: view.leadingAnchor)
        greenLeadingConstraint.priority = .defaultLow
        
        NSLayoutConstraint.activate([
            greenView.heightAnchor.constraint(equalTo: greenView.widthAnchor, multiplier: 1.0),
            greenView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            greenView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            greenView.widthAnchor.constraint(lessThanOrEqualTo: view.widthAnchor),
            greenView.heightAnchor.constraint(lessThanOrEqualTo: view.heightAnchor),
            greenLeadingConstraint
            
        ])
    }
}

