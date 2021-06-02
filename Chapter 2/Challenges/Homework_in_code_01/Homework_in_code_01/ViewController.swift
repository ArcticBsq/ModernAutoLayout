//
//  ViewController.swift
//  Homework_in_code_01
//
//  Created by Илья Москалев on 21.05.2021.
//

import UIKit

class ViewController: UIViewController {

    let greenPadding: CGFloat = 50.0
    let redPadding: CGFloat = 25.0
    
    private let greenView: UIView = {
        let view = UIView()
        view.backgroundColor = .green
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        return view
    }()
    
    private let redView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        view.autoresizingMask = [.flexibleBottomMargin, .flexibleTopMargin, .flexibleWidth]
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
            greenView.frame = CGRect(x: greenPadding, y: greenPadding, width: view.bounds.width - 2 * greenPadding, height: view.bounds.height - 2 * greenPadding)
        }
        if redView.superview == nil {
            greenView.addSubview(redView)
            redView.frame = CGRect(x: redPadding, y: greenView.bounds.height / 2 - 50, width: greenView.bounds.width - 2 * redPadding, height: 100)
        }
    }


}

