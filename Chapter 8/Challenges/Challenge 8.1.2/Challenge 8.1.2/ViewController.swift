//
//  ViewController.swift
//  Challenge 8.1.2
//
//  Created by Илья Москалев on 30.05.2021.
//

import UIKit

class ViewController: UIViewController {

    private let textLabel: UILabel = {
        let label = UILabel()
        label.text = "Engine Power"
        label.font = UIFont.systemFont(ofSize: 24)
        label.textAlignment = .center
        return label
    }()
    
    private let redButton: UIButton = {
        let button = UIButton()
        button.setTitle("Low", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        button.backgroundColor = .red
        return button
    }()
    
    private let yellowButton: UIButton = {
        let button = UIButton()
        button.setTitle("Medium", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        button.backgroundColor = .yellow
        return button
    }()
    
    private let greenButton: UIButton = {
        let button = UIButton()
        button.setTitle("High", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        button.backgroundColor = .green
        return button
    }()
    
    private lazy var stackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [textLabel, redButton, yellowButton, greenButton])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.spacing = 0.0
        stack.axis = .vertical
        stack.alignment = .fill
        stack.distribution = .fill
        return stack
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupView()
        
    }

    private func setupView() {
        view.addSubview(stackView)
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
}

