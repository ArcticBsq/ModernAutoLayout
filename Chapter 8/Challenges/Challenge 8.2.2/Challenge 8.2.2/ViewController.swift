//
//  ViewController.swift
//  Challenge 8.2.2
//
//  Created by Илья Москалев on 31.05.2021.
//

import UIKit

class ViewController: UIViewController {

    private let imageView: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "star")
        view.contentMode = .scaleToFill
        view.backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        view.setContentHuggingPriority(.defaultLow - 2, for: .vertical)
        return view
    }()
    
    private let shareButton: UIButton = {
        let button = UIButton()
        button.setTitle("Share", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 24)
        button.backgroundColor = .black
        return button
    }()
    
    private lazy var verticalStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [imageView, shareButton])
        stack.alignment = .fill
        stack.axis = .vertical
        stack.spacing = 10.0
        stack.distribution = .fill
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupView()
    }


    private func setupView() {
        view.addSubview(verticalStack)
        
        let margin = view.layoutMarginsGuide
        
        NSLayoutConstraint.activate([
            verticalStack.leadingAnchor.constraint(equalTo: margin.leadingAnchor),
            verticalStack.topAnchor.constraint(equalTo: margin.topAnchor),
            verticalStack.trailingAnchor.constraint(equalTo: margin.trailingAnchor),
            verticalStack.bottomAnchor.constraint(equalTo: margin.bottomAnchor)
        ])
    }
}

