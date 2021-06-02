//
//  ViewController.swift
//  Learning_from_text
//
//  Created by Илья Москалев on 25.05.2021.
//

import UIKit

class ViewController: UIViewController {

    private let padding: CGFloat = 50.0
    private let spacing: CGFloat = 25.0
    
    private let redView = UIView.makeView(color: .red)
    private let greenView = UIView.makeView(color: .green)
    
    // MARK: Из кастомного view, сделанного в другом классе - файле
    private let stopGoView: StopGoView = {
       let view = StopGoView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .yellow
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        // Do any additional setup after loading the view.
    }

    private func setupView() {
        // MARK: Из кастомного view, сделанного в другом классе - файле
        view.backgroundColor = .yellow
        view.addSubview(stopGoView)
        
        NSLayoutConstraint.activate([
            stopGoView.topAnchor.constraint(equalTo: view.topAnchor),
            stopGoView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            stopGoView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            stopGoView.leadingAnchor.constraint(equalTo: view.leadingAnchor)
        ])
//        view.addSubview(redView)
//        view.addSubview(greenView)
        
        // MARK: Anchors - лучший способ
//        NSLayoutConstraint.activate([
//            // Leading <--
//            redView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
//            greenView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
//            // Trailing -->
//            redView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding),
//            greenView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding),
//            // Vertical spacing
//            redView.topAnchor.constraint(equalTo: view.topAnchor, constant: padding),
//            greenView.topAnchor.constraint(equalTo: redView.bottomAnchor, constant: spacing),
//            greenView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -padding),
//            // Height
//            redView.heightAnchor.constraint(equalTo: greenView.heightAnchor)
//        ])
        
        
        
        // MARK: VFL
//        // Необходимо создать словарь view с которыми будем работать
//        let views = [
//            "redView": redView,
//            "greenView": greenView
//        ]
//        // Если надо создать константы отступов, то здесь
//        let metrics = [
//            "padding": 50.0,
//            "spacing": 25.0
//        ]
//
//        let hRedConstraints =
//            NSLayoutConstraint.constraints(withVisualFormat:
//            "H:|-(padding)-[redView]-(padding)-|", options: [],
//            metrics: metrics, views: views)
//
//        let hGreenConstraints =
//            NSLayoutConstraint.constraints(withVisualFormat:
//            "H:|-(padding)-[greenView]-(padding)-|", options: [],
//            metrics: metrics, views: views)
//
//        let vConstraints =
//        NSLayoutConstraint.constraints(withVisualFormat:
//        "V:|-(padding)-[redView(==greenView)]-(spacing)-[greenView]-(padding)-|", options: [], metrics: metrics, views: views)
//
//        let constraints = hRedConstraints + hGreenConstraints + vConstraints
//        NSLayoutConstraint.activate(constraints)
        
        
     // MARK: NSLayoutConstraint способ
//        NSLayoutConstraint.activate([
//            // Create each constraint here
//            NSLayoutConstraint(item: redView, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1.0, constant: padding),
//
//            // view.trailing == redView.trailing + padding
//            NSLayoutConstraint(item: view, attribute: .trailing, relatedBy: .equal, toItem: redView, attribute: .trailing, multiplier: 1.0, constant: padding),
//
//            // redView.top == view.top + padding
//            NSLayoutConstraint(item: redView, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1.0, constant: padding),
//
//            // view.bottom = redView.bottom + padding
//            NSLayoutConstraint(item: view, attribute: .bottom, relatedBy: .equal, toItem: redView, attribute: .bottom, multiplier: 1.0, constant: 50)
//        ])
    }
    
   
}

extension UIView {
   static func makeView(color: UIColor) -> UIView {
       let view = UIView()
       view.translatesAutoresizingMaskIntoConstraints = false
       view.backgroundColor = color
       return view
   }
}
