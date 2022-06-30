//
//  LoginController.swift
//  login-test
//
//  Created by Eduardo Matheus Oliveira de Córdova on 23/04/22.
//

import UIKit

class LoginController: UIViewController {

    @IBOutlet weak var Email: UITextField!
    @IBOutlet weak var Password: UITextField!
    @IBOutlet weak var ValidUserMessage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func login(_ sender: UIButton) {
        let email = Email.text ?? ""
        let password = Password.text ?? ""
        
        var user = User(email, password)
        
        setValidUserMessage(validUser: user.isValidUser());
    }
    
    private func setValidUserMessage(validUser: Bool){
        if(validUser){
            ValidUserMessage.text = "Usuário Válido"
            ValidUserMessage.textColor = UIColor.green
            ValidUserMessage.isHidden = false
        } else {
            ValidUserMessage.text = "Usuário Inválido"
            ValidUserMessage.textColor = UIColor.red
            ValidUserMessage.isHidden = false
        }
    }
}
