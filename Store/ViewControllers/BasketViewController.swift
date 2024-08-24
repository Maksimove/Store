//
//  BasketViewController.swift
//  Store
//
//  Created by Evgeniy Maksimov on 17.08.2024.
//

import UIKit

final class BasketViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    @IBOutlet var totalCost: UILabel!
    
    private let basketProducts = ProductManager.shared

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 200
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
}

extension BasketViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        basketProducts.basket.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cell = tableView.dequeueReusableCell(withIdentifier: "basket", for: indexPath)
       guard let cell = cell as? BasketCell else { return UITableViewCell() }
       
       let product = basketProducts.basket[indexPath.row]
       cell.setupUI(from: product)
       return cell
   }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            basketProducts.basket.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
}
