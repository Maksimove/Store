//
//  ConfirmOrderViewController.swift
//  Store
//
//  Created by Evgeniy Maksimov on 26.08.2024.
//

import UIKit

final class ConfirmOrderViewController: UIViewController {
    // MARK: - IBOutlets
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var phoneTextField: UITextField!
    @IBOutlet var addressTextField: UITextField!
    @IBOutlet var totalCost: UILabel!
    
    // MARK: - Public properties
    //    var user: User!
    
    // MARK: - Private properties
    private var products = ProductManager.shared
    
    // MARK: - View life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
//        nameTextField.text = user.name
//        phoneTextField.text = user.phone.formatted()
        let totalSum = products.basket.map { $0.price }.reduce( 0, + )
        totalCost.text = "К оплате: \(totalSum)$"
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    // MARK: - IBActions
    @IBAction func confirmOrderButtonTapped() {
        guard let name = nameTextField.text, !name.isEmpty else { return }
        guard let phone = phoneTextField.text, !phone.isEmpty else { return }
        guard let address = addressTextField.text, !address.isEmpty else { return }
        
        let order = Order(
            name: name,
            phone: Int(phone) ?? 0,
            address: address,
            products: products.basket
        )
        
        NetworkManager.shared.postRequest(with: order) { [weak self] result in
            switch result {
            case .success(let newOrder):
                self?.showAlert(with: newOrder)
            case .failure(let error):
                print(error)
            }
        }
    }
    // MARK: - Private methods
    private func showAlert(with order: Order) {
        let orderNumber = Int.random(in: 1000...5000).formatted()
        let alert = UIAlertController(
            title: "Заказ №\(orderNumber)",
            message: "\(order.name), спасибо за заказ! Мы доставим по адрессу \(order.address). Номер для связи с вами \(order.phone). Количество товаров \(order.products.count).",
            preferredStyle: .alert
        )
        
        let okayAction = UIAlertAction(title: "Ок", style: .default) { [unowned self] _ in
            products.basket.removeAll()
            dismiss(animated: true)
        }
        alert.addAction(okayAction)
        present(alert, animated: true)
    }
}
    // MARK: - UItextFieldDelegate
extension ConfirmOrderViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
        case nameTextField:
            phoneTextField.becomeFirstResponder()
        case phoneTextField:
            addressTextField.becomeFirstResponder()
        default:
            textField.resignFirstResponder()
        }
    }
}
