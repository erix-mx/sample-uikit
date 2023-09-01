//
//  DetailViewController.swift
//  UIKit Test
//
//  Created by Erix on 31/08/23.
//

import UIKit

class DetailViewController: UIViewController {
    
    var coordinator: Coordinator?
    var context: Context?  
    
    private let label: UILabel = {
        let customLabel = UILabel()
        customLabel.translatesAutoresizingMaskIntoConstraints = false
        return customLabel
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(label)

        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    }
    

 

}
