//
//  ViewController.swift
//  Ch 6 code
//
//  Created by Илья Москалев on 27.05.2021.
//

import UIKit

class ViewController: UIViewController {

    private let externalPadding: CGFloat = 50.0
    private let internalPadding: CGFloat = 25.0
    
    private let redView = UIView.makeView(color: .red)
    private let greenView = UIView.makeView(color: .green)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupView()
    }
    
    private func setupView() {
        view.backgroundColor = .yellow
        view.addSubview(redView)
        view.addSubview(greenView)
        
        let guide = view.safeAreaLayoutGuide
        
        NSLayoutConstraint.activate([
            redView.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: externalPadding),
            greenView.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: externalPadding),
            
            redView.trailingAnchor.constraint(equalTo: guide.trailingAnchor, constant: -externalPadding),
            greenView.trailingAnchor.constraint(equalTo: guide.trailingAnchor, constant: -externalPadding),
            
            redView.topAnchor.constraint(equalTo: guide.topAnchor, constant: externalPadding),
            greenView.topAnchor.constraint(equalTo: redView.bottomAnchor, constant: internalPadding),
            
            greenView.bottomAnchor.constraint(equalTo: guide.bottomAnchor, constant: -externalPadding),
            redView.heightAnchor.constraint(equalTo: greenView.heightAnchor)
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
