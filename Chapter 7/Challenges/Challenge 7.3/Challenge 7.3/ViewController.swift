//
//  ViewController.swift
//  Challenge 7.3
//
//  Created by Илья Москалев on 28.05.2021.
//

import UIKit

class ViewController: UIViewController {

    private let greenView:UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .green
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    private func setupView() {
        view.addSubview(greenView)
        
        NSLayoutConstraint.activate([
            greenView.widthAnchor.constraint(equalTo: view.widthAnchor),
            greenView.heightAnchor.constraint(equalTo: greenView.widthAnchor),
            
            
        ])
    }
}

