//
//  ViewController.swift
//  UITextFieldContentType
//
//  Created by KRUBERLICK on 01.03.2020.
//  Copyright © 2020 TrailerVote. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        // Simulating a network fetch
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            let firstNameTextField = UITextField(frame: .zero)
            firstNameTextField.borderStyle = .roundedRect
            firstNameTextField.placeholder = "First Name"
            firstNameTextField.textContentType = .givenName
            firstNameTextField.keyboardType = .namePhonePad // the autofill doesn't work without setting this property to the .namePhonePad option
            let lastNameTextField = UITextField(frame: .zero)
            lastNameTextField.borderStyle = .roundedRect
            lastNameTextField.placeholder = "Last Name"
            lastNameTextField.textContentType = .familyName
            lastNameTextField.keyboardType = .namePhonePad // the autofill doesn't work without setting this property to the .namePhonePad option
            let phoneTextField = UITextField(frame: .zero)
            phoneTextField.borderStyle = .roundedRect
            phoneTextField.placeholder = "Phone"
            phoneTextField.textContentType = .telephoneNumber
            phoneTextField.keyboardType = .namePhonePad // the autofill doesn't work with the .phonePad option
            let addressTextField = UITextField(frame: .zero)
            addressTextField.borderStyle = .roundedRect
            addressTextField.placeholder = "Address"
            addressTextField.textContentType = .fullStreetAddress
            addressTextField.keyboardType = .namePhonePad // the autofill doesn't work without setting this property to the .namePhonePad option
            let emailTextField = UITextField(frame: .zero)
            emailTextField.borderStyle = .roundedRect
            emailTextField.placeholder = "Email"
            emailTextField.textContentType = .username
            emailTextField.keyboardType = .emailAddress
            let passwordTextField = UITextField(frame: .zero)
            passwordTextField.borderStyle = .roundedRect
            passwordTextField.placeholder = "Password"
            passwordTextField.textContentType = .newPassword
            passwordTextField.isSecureTextEntry = true
            
            firstNameTextField.translatesAutoresizingMaskIntoConstraints = false
            lastNameTextField.translatesAutoresizingMaskIntoConstraints = false
            phoneTextField.translatesAutoresizingMaskIntoConstraints = false
            addressTextField.translatesAutoresizingMaskIntoConstraints = false
            emailTextField.translatesAutoresizingMaskIntoConstraints = false
            passwordTextField.translatesAutoresizingMaskIntoConstraints = false
            self.view.addSubview(firstNameTextField)

            firstNameTextField.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 30).isActive = true
            firstNameTextField.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 30).isActive = true
            firstNameTextField.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -30).isActive = true
            self.view.addSubview(lastNameTextField)
            lastNameTextField.topAnchor.constraint(equalTo: firstNameTextField.bottomAnchor, constant: 10).isActive = true
            lastNameTextField.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 30).isActive = true
            lastNameTextField.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -30).isActive = true
            self.view.addSubview(phoneTextField)
            phoneTextField.topAnchor.constraint(equalTo: lastNameTextField.bottomAnchor, constant: 10).isActive = true
            phoneTextField.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 30).isActive = true
            phoneTextField.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -30).isActive = true
            self.view.addSubview(addressTextField)
            addressTextField.topAnchor.constraint(equalTo: phoneTextField.bottomAnchor, constant: 10).isActive = true
            addressTextField.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 30).isActive = true
            addressTextField.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -30).isActive = true
            self.view.addSubview(emailTextField)
            emailTextField.topAnchor.constraint(equalTo: addressTextField.bottomAnchor, constant: 10).isActive = true
            emailTextField.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 30).isActive = true
            emailTextField.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -30).isActive = true
            self.view.addSubview(passwordTextField)
            passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 10).isActive = true
            passwordTextField.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 30).isActive = true
            passwordTextField.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -30).isActive = true
            
            firstNameTextField.becomeFirstResponder()
        }
    }


}

