//
//  IntroViewController.swift
//  Coding_Inferno-Programatic_UI-Demo
//
//  Created by Kartikeya Saxena Jain on 9/28/20.
//

import UIKit


class IntroViewController: UIViewController {

    let someLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configView()
    }
    
    private func configView() {
        view.backgroundColor    = .systemBackground
        addDemoLabel()
    }
    
    private func addDemoLabel() {
        view.addSubview(someLabel)
        someLabel.translatesAutoresizingMaskIntoConstraints = false
        
        someLabel.text          = "Coding Inferno"
        someLabel.textAlignment = .center
        
        NSLayoutConstraint.activate([
            someLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            someLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            someLabel.heightAnchor.constraint(equalToConstant: 20),
            someLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5)
        ])
    }

}
