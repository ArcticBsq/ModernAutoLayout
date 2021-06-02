//
//  ViewController.swift
//  Stacks in Code
//
//  Created by Илья Москалев on 28.05.2021.
//

import UIKit

class ViewController: UIViewController {

    private enum ViewMetrics {
        static let fontSize: CGFloat = 24.0
        static let spacing: CGFloat = 16.0
    }
    
    private let redButton = UIButton.customButton(title: "Red", color: .red, fontSize: ViewMetrics.fontSize)
    private let greenButton = UIButton.customButton(title: "Green", color: .green, fontSize: ViewMetrics.fontSize)
    private let blueButton = UIButton.customButton(title: "Blue", color: .blue, fontSize: ViewMetrics.fontSize)
    
    private lazy var buttonStackView: UIStackView = {
       let stackView = UIStackView(arrangedSubviews: [redButton, greenButton, blueButton])
        stackView.spacing = ViewMetrics.spacing
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    private let colorLabel: UILabel = {
        let label = UILabel()
        label.text = "Pick A Color"
        label.font = UIFont.systemFont(ofSize: ViewMetrics.fontSize)
        return label
    }()
    
    private lazy var rootStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [colorLabel ,buttonStackView])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.spacing = ViewMetrics.spacing
        stackView.axis = .vertical
        stackView.alignment = .center
        return stackView
        
        // Margins
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8)
        // Baseline размещение (в вертикальном стеквью одинаковое расстояние между строками)
        stackView.isBaselineRelativeArrangement = true
        // Custom spacing
        stackView.setCustomSpacing(32.0, after: colorLabel)
        stackView.setCustomSpacing(32.0, after: buttonStackView) // Всегда after, нельзя before
        // Standart/default spacing, use them to set or reset the custom spacing after view
        stackView.setCustomSpacing(UIStackView.spacingUseSystem, after: colorLabel) // To use system defuned spacing after
        stackView.setCustomSpacing(UIStackView.spacingUseSystem, after: colorLabel) // To reset spacing (remove the custom spacing)
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupView()
    }

    private func setupView() {
        view.addSubview(rootStackView)
        
        NSLayoutConstraint.activate([
            rootStackView.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor),
            rootStackView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor)
        ])
    }
}

private extension UIButton {
    static func customButton(title: String, color: UIColor, fontSize: CGFloat) -> UIButton {
        let button = UIButton(type: .custom)
        button.setTitle(title, for: .normal)
        button.setTitleColor(color, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: fontSize)
        return button
    }
}
