//
//  DetailViewViewController.swift
//  UIKit Test
//
//  Created by Erix on 30/08/23.
//

import UIKit

class DetailViewViewController: UIViewController {
    
    private let titleLabel: UILabel = {
        let customLabel = UILabel()
        
        return customLabel
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
            
        setupView()
    }
    
    private func setupView() {
        view.addSubview(titleLabel)
        
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    }
    
    func setup(title: String) {
        titleLabel.text = title
    }
}
