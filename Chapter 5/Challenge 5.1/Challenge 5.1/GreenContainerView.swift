//
//  GreenContainerView.swift
//  Challenge 5.1
//
//  Created by Илья Москалев on 26.05.2021.
//

import UIKit

class GreenContainerView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    

    private func setupView() {
        backgroundColor = .green
        
        let padding: CGFloat = 25.0
        
        let blueView = UIView.makeView(color: .blue)
        let redView = UIView.makeView(color: .red)
        
        addSubview(blueView)
        addSubview(redView)
        
        NSLayoutConstraint.activate([
            // Blue view
            blueView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: padding),
            blueView.topAnchor.constraint(equalTo: topAnchor, constant: padding),
            blueView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -padding),
            blueView.trailingAnchor.constraint(equalTo: redView.leadingAnchor, constant: -padding),
            // Red view
            redView.heightAnchor.constraint(equalTo: blueView.heightAnchor),
            redView.widthAnchor.constraint(equalTo: blueView.widthAnchor)
        ])
    }
}
