//
//  LoginView.swift
//  LoginScreen
//
//  Created by Jaime Lucea on 24/1/23.
//

import SwiftUI

struct TextFieldStyle : ViewModifier {
    
    var showPlaceholder : Bool
    var placeHolderText : String
    
    let CORNER_RADIUS : CGFloat = 10
    let HEIGHT : CGFloat = 40
    
    func body(content: Content) -> some View {
        ZStack (alignment: .leading) {
            if (showPlaceholder) {
                Text(placeHolderText)
                    .foregroundColor(.gray)
                    .padding(.horizontal, 15)
            }
            content
                .foregroundColor(Color(UIColor.darkGray))
                .padding(.horizontal, 15)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: HEIGHT)
        }
        .background(.white)
        .cornerRadius(CORNER_RADIUS)
    }

}

struct LoginView: View {
    
    
    @StateObject private var viewModel = LoginViewModel()
    @State var username : String = ""
    @State var password : String = ""
    
    var body: some View {
        
        VStack {
                        
            TextField("", text: $username)
                .modifier(TextFieldStyle(showPlaceholder: username.isEmpty, placeHolderText: "User name"))
                .textInputAutocapitalization(.never)
            
            SecureField("", text: $password)
                .modifier(TextFieldStyle(showPlaceholder: password.isEmpty, placeHolderText: "Password"))
                .privacySensitive()
                        
            Text("Log in")
                .modifier(ButtonViewModifier(foregroundColor: .white, backgroundColor: .purple))
                .padding(.top, 20)
            
            // Continue as a guest label
            Text("Forgot password?")
                .padding(.top, 20)
                .foregroundColor(.white)
            
        }
        .background(Image("background-blue"))
        .padding(20)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
