//
//  ViewController.swift
//  Compression resistance + Content hugging
//
//  Created by Илья Москалев on 28.05.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    private let sunImag: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.setContentHuggingPriority(.defaultLow + 1, for: .horizontal)
        view.setContentCompressionResistancePriority(.defaultHigh + 1, for: .horizontal)
        view.backgroundColor = .orange
        
        return view
    }()
}

