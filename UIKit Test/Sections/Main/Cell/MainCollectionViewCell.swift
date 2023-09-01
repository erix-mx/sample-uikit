//
//  CollectionCollectionViewCell.swift
//  UIKit Test
//
//  Created by Erix on 30/08/23.
//

import UIKit

class MainCollectionViewCell: UICollectionViewCell {
    
    static let id = "CollectionCollectionViewCellId"
    lazy var typeLabel: UILabel = UILabel()
    
    override var isSelected: Bool {
        didSet {
            contentView.backgroundColor = isSelected ? .gray : .white
            typeLabel.textColor = isSelected ? .black : .gray
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView.clipsToBounds = true        
        contentView.backgroundColor = .white
        
        typeLabel.textColor = .black
        typeLabel.textAlignment = .center
        
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupLayout() {
        typeLabel.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(typeLabel)
        NSLayoutConstraint.activate([
            typeLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            typeLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            typeLabel.heightAnchor.constraint(equalToConstant: 46),
            typeLabel.widthAnchor.constraint(equalToConstant: 76)
        ])
    }
    
    func setup(title: String) {
        typeLabel.text = title
    }
}
