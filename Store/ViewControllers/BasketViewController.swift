//
//  BasketViewController.swift
//  Store
//
//  Created by Evgeniy Maksimov on 17.08.2024.
//

import UIKit

final class BasketViewController: UIViewController {
    // MARK: - @IBOutlets
    @IBOutlet var tableView: UITableView!
    @IBOutlet var totalCost: UILabel!
    @IBOutlet var infoLabel: UILabel!
    @IBOutlet var makeOrder: UIButton!
    @IBOutlet var deleteAllProducts: UIBarButtonItem!
    
    // MARK: - Private properties
    private let basketProducts = ProductManager.shared
    
    // MARK: - View life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        getTotalSum()
        tableView.rowHeight = 150
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
        getTotalSum()
        checkBasketCount()
    }
    
    // MARK: - Private methods
    private func getTotalSum() {
        let totalSum = basketProducts.basket.map { $0.price }.reduce(0, + )
        totalCost.text = "Итог: \(totalSum)$"
        tabBarController?.viewControllers?.last?.tabBarItem.badgeValue = "\(basketProducts.basket.count)"
    }
    private func checkBasketCount() {
        if basketProducts.basket.isEmpty {
            tableView.isHidden = true
            totalCost.isHidden = true
            makeOrder.isHidden = true
            deleteAllProducts.isEnabled = false
        } else {
            tableView.isHidden = false
            totalCost.isHidden = false
            makeOrder.isHidden = false
            deleteAllProducts.isEnabled = true
        }
    }
    // MARK: - @IBOActions
    @IBAction func removeAllButton(_ sender: UIBarButtonItem) {
        basketProducts.basket.removeAll()
        getTotalSum()
        checkBasketCount()
        tableView.reloadData()
    }
}
    // MARK: - UITableViewDataSource
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
            checkBasketCount()
            getTotalSum()
        }
    }
}
