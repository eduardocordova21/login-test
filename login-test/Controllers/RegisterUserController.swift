//
//  RegisterUserController.swift
//  login-test
//
//  Created by Eduardo Matheus Oliveira de Córdova on 22/05/22.
//

import UIKit

class RegisterUserController : UIViewController{
    
    @IBOutlet weak var Email: UITextField!
    @IBOutlet weak var Password: UITextField!
    @IBOutlet weak var Save: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func RegisterNewUser(_ sender: Any) {
        let email = Email.text ?? "";
        let password = Password.text ?? "";
        
        let user = User(email, password);
            
    }
    
}
