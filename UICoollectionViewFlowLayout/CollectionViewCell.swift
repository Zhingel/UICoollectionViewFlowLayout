//
//  CollectionViewCell.swift
//  UICoollectionViewFlowLayout
//
//  Created by Стас Жингель on 21.08.2021.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    weak var textLabel: UILabel!
    override init(frame: CGRect) {
        super.init(frame: frame)
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(label)
        NSLayoutConstraint.activate ([
            label.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            label.topAnchor.constraint(equalTo: contentView.topAnchor),
            label.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            label.trailingAnchor.constraint(equalTo: contentView.trailingAnchor)
        ])
        textLabel = label
        contentView.backgroundColor = .green
        textLabel.textAlignment = .center
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
