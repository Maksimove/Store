//
//  CatalogViewController.swift
//  Store
//
//  Created by Evgeniy Maksimov on 13.08.2024.
//

import UIKit

final class CatalogViewController: UICollectionViewController {
    
    var catalog: [Product]!

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        catalog.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        guard let cell = cell as? CatalogCell else { return UICollectionViewCell() }
        
        let product = catalog[indexPath.item]
        cell.setupUI(from: product)
        cell.product = product
        return cell
    }
}

