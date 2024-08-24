//
//  ViewController.swift
//  Store
//
//  Created by Evgeniy Maksimov on 13.07.2024.
//

import UIKit
protocol RegisterViewControllerDelegate: AnyObject {
    func getUser(_ user: User)
}
enum AlertStatus {
    case noData
    case uncorrectedFormat
    case uncorrectedUserData
    
    var message: String {
        switch self {
        case .noData:
            return "Введите данные"
        case .uncorrectedFormat:
            return "Неверный формат ввода данных"
        case .uncorrectedUserData:
            return "Неверный логин или пароль"
        }
    }
}

final class LoginViewController: UIViewController {
    
    @IBOutlet var loginTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private var user: User!
    
    private let userDefaults = StorageManager.shared
    
    override func viewDidLoad() {
        user = userDefaults.fetchUser()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let registerVC = segue.destination as? RegisterViewController else { return }
        registerVC.delegate = self
        
    }
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
       
            guard let login = loginTF.text, !login.isEmpty else {
                showAlert(withStatus: AlertStatus.noData)
                return false
            }
            guard let password = passwordTF.text, !password.isEmpty else {
                showAlert(withStatus: AlertStatus.noData)
                return false
            }
        guard login == user?.name && password == user.password else {
                showAlert(withStatus: AlertStatus.uncorrectedUserData)
                return false
            }

        return true
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func registerButtonTapped() {
        performSegue(withIdentifier: "register", sender: nil)
    }

    private func showAlert(withStatus status: AlertStatus) {
        let alert = UIAlertController(title: "Ошибка", message: status.message, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "ок", style: .cancel)
        alert.addAction(alertAction)
        present(alert, animated: true)
    }
}

extension LoginViewController: RegisterViewControllerDelegate {
    func getUser(_ user: User) {
        self.user = user
    }
}
extension LoginViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField == loginTF 
        ? passwordTF.becomeFirstResponder()
        : textField.resignFirstResponder()
    }
}
