//
//  ViewController.swift
//  Ch 6 margins in code
//
//  Created by Илья Москалев on 27.05.2021.
//

import UIKit

class ViewController: UIViewController {

    private let margin: CGFloat = 50
    
    private let nestedView: NestedView = {
       let view = NestedView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupView()
    }

    private func setupView() {
        view.backgroundColor = .yellow
        view.addSubview(nestedView)
        changeNestedMargins(inset: margin)
        
        NSLayoutConstraint.activate([
            nestedView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            nestedView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            nestedView.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            nestedView.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor)
        ])
    }
    
    private func changeNestedMargins(inset: CGFloat) {
        nestedView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: inset, leading: inset, bottom: inset, trailing: inset)
    }
}

