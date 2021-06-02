//
//  ContainerView.swift
//  Challenge_2.3 + 2.4
//
//  Created by Илья Москалев on 21.05.2021.
//

import UIKit

@IBDesignable
class ContainerView: UIView {
    
    @IBInspectable private var padding: CGFloat = 20.0 {
        didSet {
            setNeedsLayout()
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    private func setupView() {
        addSubview(redView)
        addSubview(greenView)
        addSubview(blueView)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let containerWidth = bounds.width
        let containerHeight = bounds.height
        
        let numberOfItems: CGFloat = 3
        
        let itemWidth = containerWidth
        let itemHeight = (containerHeight - (numberOfItems - 1) * padding) / 3
        
        redView.frame = CGRect(x: 0, y: 0, width: itemWidth, height: itemHeight)
        greenView.frame = CGRect(x: 0, y: itemHeight + padding, width: itemWidth, height: itemHeight)
        blueView.frame = CGRect(x: 0, y: containerHeight - itemHeight, width: itemWidth, height: itemHeight)
    }
    
    private var redView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        return view
    }()
    
    private var greenView: UIView = {
        let view = UIView()
        view.backgroundColor = .green
        return view
    }()
    
    private var blueView: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        return view
    }()

    
}
