//
//  ViewController.swift
//  Optional constraints in code
//
//  Created by Илья Москалев on 27.05.2021.
//

import UIKit

class ViewController: UIViewController {
    
    private let sunView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "sun")
        imageView.backgroundColor = .orange
        return imageView
    }()
    private let snowView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "snow")
        imageView.backgroundColor = .blue
        return imageView
    }()

    private let captionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "This label should be below the tallest of the two images"
        label.font = UIFont.systemFont(ofSize: 32.0)
        label.numberOfLines = 0
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    private func setupView() {
        view.addSubview(sunView)
        view.addSubview(snowView)
        view.addSubview(captionLabel)

        let margins = view.layoutMarginsGuide
        let captionTopConstraint = captionLabel.topAnchor.constraint(equalTo: margins.topAnchor)
        captionTopConstraint.priority = .defaultLow

        NSLayoutConstraint.activate([
            sunView.leadingAnchor.constraint(equalTo: margins.leadingAnchor),
            sunView.topAnchor.constraint(equalTo: margins.topAnchor),
            
            snowView.topAnchor.constraint(equalTo: margins.topAnchor),
            snowView.trailingAnchor.constraint(equalTo: margins.trailingAnchor),
            
            captionLabel.leadingAnchor.constraint(equalTo: margins.leadingAnchor),
            captionLabel.trailingAnchor.constraint(equalTo: margins.trailingAnchor),
            
            captionLabel.topAnchor.constraint(greaterThanOrEqualToSystemSpacingBelow: sunView.bottomAnchor, multiplier: 1.0),
            captionLabel.topAnchor.constraint(greaterThanOrEqualToSystemSpacingBelow: snowView.bottomAnchor, multiplier: 1.0),
            
            captionTopConstraint
        ])
    }
}


