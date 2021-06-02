//
//  RootViewController.swift
//  Creating_UI_without_storyboard_02
//
//  Created by Илья Москалев on 21.05.2021.
//

import UIKit

class RootViewController: UIViewController {
    
    let padding: CGFloat = 50.0
    
    private let greenView: UIView = {
       let view = UIView()
        view.backgroundColor = .green
        view.autoresizingMask = [.flexibleWidth, .flexibleBottomMargin]
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = .yellow
    }
    
    override func viewWillLayoutSubviews() {
        if greenView.superview == nil {
            view.addSubview(greenView)
            let width = view.bounds.width - 2 * padding
            greenView.frame = CGRect(x: padding, y: padding, width: width, height: 3 * padding)
        }
    }
}
