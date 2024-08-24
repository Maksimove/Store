//
//  CategoryCell.swift
//  Store
//
//  Created by Evgeniy Maksimov on 13.08.2024.
//

import UIKit

final class CategoryCell: UICollectionViewCell {
    
    @IBOutlet var categoryImage: UIImageView!
    
    @IBOutlet var categoryName: UILabel!
    
    
    func setupUI(from value: String, withImage image: String) {
        categoryImage.image = UIImage(named: image)
        categoryName.text = value
    }
}
