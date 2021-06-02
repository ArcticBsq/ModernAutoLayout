//
//  ViewController.swift
//  Ch 6 margi constraints Interface builder
//
//  Created by Илья Москалев on 27.05.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print(view.layoutMargins)
        print(systemMinimumLayoutMargins)
    }

}

