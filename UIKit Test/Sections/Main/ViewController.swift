//
//  ViewController.swift
//  UIKit Test
//
//  Created by Erix on 22/08/23.
//

import UIKit

class ViewController: UIViewController {
    
    private let mainLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        
        label.text = "Hello World!"
        label.textColor = .black
        label.textAlignment = .center
        return label
    }()
    
    private let myButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Mi first button", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .green
        
        view.addSubview(mainLabel)
        view.addSubview(myButton)
        
        
        mainLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
        mainLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        mainLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        mainLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        myButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        myButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        myButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        myButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 32).isActive = true
        
    }


}

