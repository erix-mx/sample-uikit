//
//  ViewController+Delegates.swift
//  UIKit Test
//
//  Created by Erix on 31/08/23.
//

import UIKit

extension MainViewController: UITableViewDataSource, MainTableDelegate {
    func didTypeSelect(type: String) {
        if let context = context {
            context.initialize(coordinator: MainCoordinator(context: context))
        }
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: MainViewControllerCellTableViewCell.id, for: indexPath) as? MainViewControllerCellTableViewCell else {
            fatalError("Could not cast MainViewControllerCellTableViewCell")
        }
        cell.setup(contentTitle: "Item number \(indexPath.row)", image: UIImage(named: "new_post")!)
        cell.delegate = self
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        100
    }
}

extension MainViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Seleccionaste la fila \(indexPath.row)")
    }
    
}

extension MainViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MainCollectionViewCell.id, for: indexPath) as? MainCollectionViewCell else {
            fatalError("Could not cast MainCollectionViewCell")
        }
        
        cell.setup(title: "Item \(indexPath.row)")
        return cell
    }
    
    
}

extension MainViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 76, height: 48)
    }
}
