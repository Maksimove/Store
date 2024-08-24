//
//  BasketCell.swift
//  Store
//
//  Created by Evgeniy Maksimov on 18.08.2024.
//

import UIKit

final class BasketCell: UITableViewCell {

    @IBOutlet var imageProduct: UIImageView!
    @IBOutlet var nameProduct: UILabel!
    @IBOutlet var priceProduct: UILabel!
    
    func setupUI(from product: Product) {
        imageProduct.image = UIImage(named: product.image)
        nameProduct.text = product.name
        priceProduct.text = "\(product.price)$"
    }
    
}
