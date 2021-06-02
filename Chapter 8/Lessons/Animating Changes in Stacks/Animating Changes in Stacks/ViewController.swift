//
//  ViewController.swift
//  Animating Changes in Stacks
//
//  Created by Илья Москалев on 30.05.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private var axisSwitch: UISwitch!
    @IBOutlet private var imageStackView: UIStackView!
    @IBOutlet var containerStackView: UIStackView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupView()
        configureAxis()
        
    }

    @IBAction func axisChanged(_ sender: UISwitch) {
        let animator = UIViewPropertyAnimator(duration: 2.0, dampingRatio: 0.2) {
            self.configureAxis()
        }
        animator.startAnimation()
    }
    
    private func configureAxis() {
        imageStackView.axis = axisSwitch.isOn ? .vertical : .horizontal
        
        if let lastImageView = imageStackView.arrangedSubviews.last {
            lastImageView.isHidden = !axisSwitch.isOn
        }
    }
    
    private func setupView() {
        let backgroundView = UIView()
        backgroundView.translatesAutoresizingMaskIntoConstraints = false
        backgroundView.backgroundColor = .purple
        backgroundView.layer.cornerRadius = 10
        containerStackView.insertSubview(backgroundView, at: 0)
        
        NSLayoutConstraint.activate([
            containerStackView.leadingAnchor.constraint(equalTo: backgroundView.leadingAnchor),
            containerStackView.trailingAnchor.constraint(equalTo: backgroundView.trailingAnchor),
            containerStackView.bottomAnchor.constraint(equalTo: backgroundView.bottomAnchor),
            containerStackView.topAnchor.constraint(equalTo: backgroundView.topAnchor)
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

