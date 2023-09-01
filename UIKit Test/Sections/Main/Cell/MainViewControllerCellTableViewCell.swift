//
//  MainViewControllerCellTableViewCell.swift
//  UIKit Test
//
//  Created by Erix on 29/08/23.
//

import UIKit

class MainViewControllerCellTableViewCell: UITableViewCell {
    
    static let id = "MainViewControllerCellTableViewCellId"
    
    weak var delegate: MainTableDelegate?
    var valueTitle: String = ""
    
    private let icon: UIImageView = {
        let customImage = UIImageView()
        
        return customImage
    }()
    
    private let title: UILabel = {
        let customLabel = UILabel()
        
        
        return customLabel
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        selectionStyle = .none
        backgroundColor = .clear
        //contentView.backgroundColor = .blue
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        
        setupView()
    }
    
    private func setupView() {
        
        contentView.addSubview(icon)
        contentView.addSubview(title)
        
        
        icon.translatesAutoresizingMaskIntoConstraints = false
        icon.contentMode = .scaleAspectFit
        
        NSLayoutConstraint.activate([
            icon.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 24),
            //icon.topAnchor.constraint(equalTo: contentView.topAnchor),
            //icon.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            icon.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            icon.heightAnchor.constraint(equalToConstant: 76),
            icon.widthAnchor.constraint(equalToConstant: 76),
        ])
                                
        title.translatesAutoresizingMaskIntoConstraints = false
        title.textColor = .black
        title.font = .systemFont(ofSize: 16, weight: .regular)
        
        NSLayoutConstraint.activate([
            title.leadingAnchor.constraint(equalTo: icon.trailingAnchor, constant: 19),
            title.heightAnchor.constraint(equalToConstant: 32),
            title.topAnchor.constraint(equalTo: contentView.topAnchor),
            title.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            
        ])
    }
    
    func setup(contentTitle: String, image: UIImage) {
        icon.image = image
        icon.layer.cornerRadius = icon.frame.size.width / 2
        icon.clipsToBounds = true
        
        valueTitle = contentTitle
        title.text = valueTitle
        setupGestureRecognizer()
    }
    
    private func setupGestureRecognizer() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleTap))
        self.addGestureRecognizer(tapGesture)
    }

    @objc private func handleTap() {
        delegate?.didTypeSelect(type: valueTitle)
    }
    
}
