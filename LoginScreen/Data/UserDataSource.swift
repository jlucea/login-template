//
//  UserDataSource.swift
//  LoginScreen
//
//  Created by Jaime Lucea on 20/1/23.
//

import Foundation

class UserDataSource {
    
    struct AuthResponse {
        var success : Bool
        var token : String
        var username: String
    }
    
    func authenticate(user: User) -> AuthResponse {
        if user.username == "Jaime" && user.password == "123" {
            return AuthResponse(success: true, token: "XYZ", username: user.username)
        } else {
            return AuthResponse(success: false, token: "", username: user.username)
        }
    }
    
    
}
