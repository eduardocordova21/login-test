//
//  User.swift
//  login-test
//
//  Created by Eduardo Matheus Oliveira de Córdova on 24/04/22.
//

import Foundation

var SavedUsers = Array<User>();

struct User {
    var email: String;
    var password: String;
    
    init(_ email: String, _ password: String) {
        self.email = email;
        self.password = password;
    }
}

extension User{
    mutating func isValidUser() -> Bool{
        var isValid = true
        
        if(email.count == 0 || IsValidEmail(email: email)){
            isValid = false
        }
        
        if(password.count == 0){
            isValid = false
        }
        
        return isValid;
    }
    
    mutating func RegisterNewUser(user: User) -> Void{
        SavedUsers.append(user);
    }
}

private func IsValidEmail(email: String) -> Bool {
    var isValid = true
    let emailRegEx = "[A-Z0-9a-z.-_]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,3}"
    
    do {
        let regex = try NSRegularExpression(pattern: emailRegEx)
        let nsString = email as NSString
        let results = regex.matches(in: email, range: NSRange(location: 0, length: nsString.length))
        
        if results.count == 0
        {
            isValid = false
        }
        
    } catch let error as NSError {
        print("Invalid Regex: \(error.localizedDescription)")
        isValid = false
    }
    
    return isValid
}
