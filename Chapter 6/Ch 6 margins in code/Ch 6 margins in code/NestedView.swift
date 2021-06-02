//
//  NestedView.swift
//  Ch 6 margins in code
//
//  Created by Илья Москалев on 27.05.2021.
//

import UIKit

class NestedView: UIView {

    var nestedColor: UIColor = .green {
        didSet {
            nestedView.backgroundColor = nestedColor
        }
    }
    
    private lazy var nestedView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = nestedColor
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    private func setupView() {
        addSubview(nestedView)
        
        NSLayoutConstraint.activate([
            nestedView.leadingAnchor.constraint(equalTo: layoutMarginsGuide.leadingAnchor),
            nestedView.topAnchor.constraint(equalTo: layoutMarginsGuide.topAnchor),
            nestedView.trailingAnchor.constraint(equalTo: layoutMarginsGuide.trailingAnchor),
            nestedView.bottomAnchor.constraint(equalTo: layoutMarginsGuide.bottomAnchor)
        ])
    }
}
