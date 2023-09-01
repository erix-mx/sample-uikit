//
//  MainViewController.swift
//  UIKit Test
//
//  Created by Erix on 29/08/23.
//

import UIKit

class MainViewController: UIViewController {
    
    var coordinator: Coordinator?
    var context: Context?    
        
    private let titleLabel: UILabel = {
        let customLabel = UILabel()
        customLabel.translatesAutoresizingMaskIntoConstraints = false
        customLabel.text = "Title"
        //customLabel.backgroundColor = .green
        customLabel.font = .systemFont(ofSize: 29, weight: .bold)
        customLabel.textAlignment = .center
        return customLabel
    }()
        
    private let tableView: UITableView = {
        let customTableView = UITableView()
        customTableView.translatesAutoresizingMaskIntoConstraints = false
        //customTableView.backgroundColor = .red
        customTableView.separatorStyle = .none
        
        return customTableView
    }()
    
    private let collectionView: UICollectionView = {
        let horizontalLayout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        horizontalLayout.scrollDirection = .horizontal
        let customCollectionView = UICollectionView(frame: .zero, collectionViewLayout: horizontalLayout)
        
        customCollectionView.translatesAutoresizingMaskIntoConstraints = false
        customCollectionView.showsHorizontalScrollIndicator = false
        customCollectionView.showsVerticalScrollIndicator = false
        
        return customCollectionView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    private func setupView() {
        view.backgroundColor = UIColor.white
        
        view.addSubview(titleLabel)
        view.addSubview(collectionView)
        view.addSubview(tableView)
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(MainViewControllerCellTableViewCell.self, forCellReuseIdentifier: MainViewControllerCellTableViewCell.id)
        
        
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(MainCollectionViewCell.self, forCellWithReuseIdentifier: MainCollectionViewCell.id)
        
        NSLayoutConstraint.activate([
        
            //Title
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
            titleLabel.heightAnchor.constraint(equalToConstant: 48),
            
            //Collection
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            collectionView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor),
            collectionView.heightAnchor.constraint(equalToConstant: 46),
            
            //Table
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.topAnchor.constraint(equalTo: collectionView.bottomAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
        
    }


}

