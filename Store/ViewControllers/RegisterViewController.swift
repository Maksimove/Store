//
//  RegisterViewController.swift
//  Store
//
//  Created by Evgeniy Maksimov on 04.08.2024.
//

import UIKit

final class RegisterViewController: UIViewController {
    // MARK: - IBOutlets
    @IBOutlet var nameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    @IBOutlet var phoneNumberTF: UITextField!
    
    // MARK: - Public properties
    weak var delegate: RegisterViewControllerDelegate?
    
    // MARK: - Private properties
    private let userDefaults = StorageManager.shared
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    // MARK: - IBActions
    @IBAction func registrationButtonTapped() {
        let user = User(
            name: nameTF.text ?? "",
            password: passwordTF.text ?? "",
            phone: Int(phoneNumberTF.text ?? "") ?? 0
        )
        userDefaults.save(user)
        delegate?.getUser(user)
        dismiss(animated: true)
    }
    
    @IBAction func cancelButtonTapped() {
        dismiss(animated: true)
    }
}
    // MARK: - UITextFieldDelegate
extension RegisterViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
        case nameTF:
            passwordTF.becomeFirstResponder()
        case passwordTF:
            phoneNumberTF.becomeFirstResponder()
        default:
            textField.resignFirstResponder()
        }
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if textField == phoneNumberTF {
            let toolBar = UIToolbar()
            toolBar.sizeToFit()
            let doneButton = UIBarButtonItem(
                barButtonSystemItem: .done,
                target: textField,
                action: #selector(resignFirstResponder)
            )
            let flexBarButton = UIBarButtonItem(
                barButtonSystemItem: .flexibleSpace,
                target: nil,
                action: nil
            )
            toolBar.items = [flexBarButton,doneButton]
            textField.inputAccessoryView = toolBar
        }
    }
}
