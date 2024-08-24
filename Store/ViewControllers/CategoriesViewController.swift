//
//  CatalogViewController.swift
//  Store
//
//  Created by Evgeniy Maksimov on 04.08.2024.
//

import UIKit

final class CategoriesViewController: UICollectionViewController {
    
    private let catalog = Catalog.getCatalog()

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let catalogVC = segue.destination as? CatalogViewController else { return }
        
        let selectedItem = collectionView.indexPathsForSelectedItems
        selectedItem?.forEach { indexPath in
            catalogVC.catalog = catalog.products[indexPath.item]
            catalogVC.title = catalog.category[indexPath.item]
        }
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        catalog.category.count
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "categoryCell", for: indexPath)
        guard let cell = cell as? CategoryCell else { return UICollectionViewCell() }
        
        let category = catalog.category[indexPath.item]
        let imageCategory = catalog.imageCategory[indexPath.item]
        
        cell.setupUI(from: category, withImage: imageCategory)
        return cell
    }

}


