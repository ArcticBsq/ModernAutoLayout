//
//  ViewController.swift
//  Challenge 5.1
//
//  Created by Илья Москалев on 25.05.2021.
//

import UIKit

class ViewController: UIViewController {

    private let redView = UIView.makeView(color: .red)
    private let greenView = UIView.makeView(color: .green)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupView()
    }
    
    func setupView() {
        let padding: CGFloat = 50.0
        let spacing: CGFloat = 25.0
        
        view.backgroundColor = .yellow
        view.addSubview(greenView)
        greenView.addSubview(redView)
        
        
        NSLayoutConstraint.activate([
            // Green view constraints
            greenView.topAnchor.constraint(equalTo: view.topAnchor, constant: padding),
            greenView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -padding),
            greenView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
            greenView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding),
            // Red view constraints
            redView.leadingAnchor.constraint(equalTo: greenView.leadingAnchor, constant: spacing),
            redView.trailingAnchor.constraint(equalTo: greenView.trailingAnchor, constant: -spacing),
            redView.centerXAnchor.constraint(equalTo: greenView.centerXAnchor),
            redView.centerYAnchor.constraint(equalTo: greenView.centerYAnchor),
            redView.heightAnchor.constraint(equalTo: greenView.heightAnchor, multiplier: 0.2)
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
