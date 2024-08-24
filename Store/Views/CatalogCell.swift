//
//  CatalogCell.swift
//  Store
//
//  Created by Evgeniy Maksimov on 16.08.2024.
//

import UIKit

final class CatalogCell: UICollectionViewCell {
    @IBOutlet var productImage: UIImageView!
    @IBOutlet var productName: UILabel!
    @IBOutlet var price: UILabel!
    
    var product: Product!
    
    private let basketProducts = ProductManager.shared
    
    func setupUI(from product: Product) {
        productImage.image = UIImage(named: product.image)
        productName.text = product.name
        price.text = "\(product.price)$"
    }
    
    @IBAction func addProduct() {
        basketProducts.basket.append(product)
    }
}
