//
//  StopGoView.swift
//  Learning_from_text
//
//  Created by Илья Москалев on 25.05.2021.
//

import UIKit

class StopGoView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private let padding: CGFloat = 50.0
    private let spacing: CGFloat = 25.0
    private let redView = UIView.makeView(color: .red)
    private let greenView = UIView.makeView(color: .green)
    
    private func setupView() {
    addSubview(redView)
    addSubview(greenView)
        
        NSLayoutConstraint.activate([
            redView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: padding),
            greenView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: padding),
            
            redView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -padding),
            greenView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -padding),
            
            redView.topAnchor.constraint(equalTo: topAnchor, constant: padding),
            greenView.topAnchor.constraint(equalTo: redView.bottomAnchor, constant: padding),
            greenView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -padding),
            
            redView.heightAnchor.constraint(equalTo: greenView.heightAnchor)
        ])
    }

}
