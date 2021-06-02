//
//  ViewController.swift
//  Layout_before_Auto_Layout_01
//
//  Created by Илья Москалев on 21.05.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var tileView: TileView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        // 5% radius
        let radius = tileView.bounds.width / 20
        tileView.layer.cornerRadius = radius
    }
}

