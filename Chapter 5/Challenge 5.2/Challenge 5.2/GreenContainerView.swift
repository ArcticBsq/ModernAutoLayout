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
        fatalError("init(coder:) has not been implemented")
    }
    
    private let padding: CGFloat = 25.0
    
    private let blueView = UIView.makeView(color: .blue)
    private let redView = UIView.makeView(color: .red)
    
    private func setupView() {
        backgroundColor = .green
    
        addSubview(blueView)
        addSubview(redView)
        
        NSLayoutConstraint.activate([
            blueView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: padding),
            blueView.topAnchor.constraint(equalTo: topAnchor, constant: padding),
            blueView.trailingAnchor.constraint(equalTo: redView.leadingAnchor, constant: -padding),
            blueView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -padding),
            
            redView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -padding),
            redView.heightAnchor.constraint(equalTo: blueView.heightAnchor),
            redView.widthAnchor.constraint(equalTo: blueView.widthAnchor),
            redView.topAnchor.constraint(equalTo: blueView.topAnchor)
        ])
    }
}
