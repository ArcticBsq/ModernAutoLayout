//
//  TileView.swift
//  Layout_before_Auto_Layout_01
//
//  Created by Илья Москалев on 21.05.2021.
//

import UIKit

@IBDesignable
class TileView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    private func setupView() {
        // add view setup here
        addSubview(blueView)
        addSubview(redView)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        // Adjust subviews here
        // Size of this container view
        let containerWidth = bounds.width
        let containerHeight = bounds.height
        
        // Calculate width and height of each item
        // including the padding
        let numberOfItems: CGFloat = 2
        
        let itemWidth = (containerWidth - (numberOfItems + 1) * padding) / numberOfItems
        let itemHeight = containerHeight - 2 * padding
        
        blueView.frame = CGRect(x: padding, y: padding, width: itemWidth, height: itemHeight)
        redView.frame = CGRect(x: 2 * padding + itemWidth, y: padding, width: itemWidth, height: itemHeight)
    }
    
    private let redView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        return view
    }()
    
    private let blueView: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        return view
    }()
    
    @IBInspectable var padding: CGFloat = 25.0 {
        didSet {
            setNeedsLayout()
        }
    }
}
