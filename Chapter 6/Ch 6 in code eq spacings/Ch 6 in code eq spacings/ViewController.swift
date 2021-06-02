//
//  ViewController.swift
//  Ch 6 in code eq spacings
//
//  Created by Илья Москалев on 27.05.2021.
//

import UIKit

class ViewController: UIViewController {

    private lazy var cancelButton: UIButton = {
        let title = NSLocalizedString("Cancel", comment: "Cancel button")
        let button = UIButton.customButton(title: title, titleColor: .white, tintColor: .red, background: .red)
        button.addTarget(self, action: #selector(cancelActiom(_:)), for: .touchUpInside)
        return button
    }()
    private lazy var okButton: UIButton = {
        let title = NSLocalizedString("OK", comment: "OK button")
        let button = UIButton.customButton(title: title, titleColor: .white, tintColor: .green, background: .green)
        button.addTarget(self, action: #selector(okAction(_:)), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupView()
    }

    private func setupView() {
        let leadingGuide = UILayoutGuide()
        let middleGuide = UILayoutGuide()
        let trailingGuide = UILayoutGuide()
        
        view.addLayoutGuide(leadingGuide)
        view.addLayoutGuide(middleGuide)
        view.addLayoutGuide(trailingGuide)
        
        view.addSubview(cancelButton)
        view.addSubview(okButton)
        
        NSLayoutConstraint.activate([
            view.leadingAnchor.constraint(equalTo: leadingGuide.leadingAnchor),
            leadingGuide.trailingAnchor.constraint(equalTo: cancelButton.leadingAnchor),
            
            cancelButton.trailingAnchor.constraint(equalTo: middleGuide.leadingAnchor),
            middleGuide.trailingAnchor.constraint(equalTo: okButton.leadingAnchor),
            
            okButton.trailingAnchor.constraint(equalTo: trailingGuide.leadingAnchor),
            trailingGuide.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            cancelButton.widthAnchor.constraint(equalTo: okButton.widthAnchor),
            
            leadingGuide.widthAnchor.constraint(equalTo: middleGuide.widthAnchor),
            leadingGuide.widthAnchor.constraint(equalTo: trailingGuide.widthAnchor),
            
            cancelButton.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor),
            okButton.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor)
        ])
    }
}

extension ViewController {
    @objc private func cancelActiom(_ sender: UIButton) {
        print("Cancel")
    }
    
    @objc private func okAction(_ sender: UIButton) {
        print("OK")
    }
}

extension UIButton {
    static func customButton(title: String, titleColor: UIColor, tintColor: UIColor, background: UIColor) -> UIButton {
        let button = UIButton(type: .custom)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(title, for: .normal)
        button.setTitleColor(titleColor, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button.backgroundColor = background
        button.tintColor = tintColor
        button.contentEdgeInsets = UIEdgeInsets(top: 8, left: 16, bottom: 8, right: 16)
        return button
    }
}
