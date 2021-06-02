//
//  ViewController.swift
//  Challenge 8.3
//
//  Created by Илья Москалев on 31.05.2021.
//

import UIKit

class ViewController: UIViewController {

    private let hideSwitch: UISwitch = {
        let sw = UISwitch()
        sw.isOn = true
        sw.layer.borderWidth = 1
        sw.layer.borderColor = UIColor.white.cgColor
        sw.addTarget(self, action: #selector(turnSwitch), for: .touchUpInside)
        return sw
    }()
    
    private let firstLabel: UILabel = {
        let label = UILabel()
        label.text = "1A"
        label.font = UIFont.systemFont(ofSize: 16)
        label.textColor = .black
        label.backgroundColor = .yellow
        label.textAlignment = .center
        return label
    }()
    
    private let secondtLabel: UILabel = {
        let label = UILabel()
        label.text = "2BX"
        label.font = UIFont.systemFont(ofSize: 16)
        label.textColor = .black
        label.backgroundColor = .yellow
        label.textAlignment = .center
        return label
    }()
    
    private let thirdLabel: UILabel = {
        let label = UILabel()
        label.text = "3Z"
        label.font = UIFont.systemFont(ofSize: 16)
        label.textColor = .black
        label.backgroundColor = .yellow
        label.textAlignment = .center
        return label
    }()
    
    private lazy var textStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [firstLabel, secondtLabel, thirdLabel])
        stack.spacing = 8.0
        stack.alignment = .fill
        stack.distribution = .fillEqually
        return stack
    }()
    
    private lazy var verticalStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [hideSwitch, textStack])
        stack.spacing = 16.0
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.alignment = .center
        stack.distribution = .fill
        stack.addBackground(color: .purple)
        stack.isLayoutMarginsRelativeArrangement = true
        stack.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16)
        return stack
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupView()
    }

    @objc private func turnSwitch() {
        if hideSwitch.isOn {
            
        } else {
            
        }
    }
    
    private func setupView() {
        title = "Show Code"
        
        view.addSubview(verticalStack)
        
        let margin = view.layoutMarginsGuide
        NSLayoutConstraint.activate([
            verticalStack.leadingAnchor.constraint(equalTo: margin.leadingAnchor),
            verticalStack.topAnchor.constraint(equalTo: margin.topAnchor),
            verticalStack.trailingAnchor.constraint(equalTo: margin.trailingAnchor)
        ])
    }
}

public extension UIStackView {
    @discardableResult
    func addUnarrangedView(color: UIColor, radius: CGFloat = 0, at index: Int) -> UIView {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = color
        view.layer.cornerRadius = radius
        insertSubview(view, at: index)
        
        NSLayoutConstraint.activate([
            view.leadingAnchor.constraint(equalTo: leadingAnchor),
            view.topAnchor.constraint(equalTo: topAnchor),
            view.trailingAnchor.constraint(equalTo: trailingAnchor),
            view.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
        
        return view
    }
    
    @discardableResult
    func addBackground(color: UIColor, radius: CGFloat = 0) -> UIView {
        return addUnarrangedView(color: color, radius: radius, at: 0)
    }
    
    @discardableResult
    func addForeground(color: UIColor, radius: CGFloat = 0) -> UIView {
        let index = subviews.count
        return addUnarrangedView(color: color, radius: radius, at: index)
    }
}
