//
//  LoginViewModel.swift
//  LoginScreen
//
//  Created by Jaime Lucea on 24/1/23.
//

import Foundation

// This can be removed in case we want to reuse the ViewModel in other views
extension LoginView {
    
    @MainActor class LoginViewModel : ObservableObject {
        
        @Published private(set) var username : String = ""
        @Published private(set) var password : String = ""
        
        func attemptLogin() {
            
            print("Authenticating user \(username)")
            
            var user = User(username: username, password: password)
            let uds = UserDataSource()
            var response = uds.authenticate(user: user)
            
            if response.success {
                print("User successfully authenticated")
                print("Auth token = \(response.token)")
            } else {
                print("Authentication failed")
            }
        }
        
        
    }
    
    
}

