//
//  ContentView.swift
//  LoginScreen
//
//  Created by Jaime Lucea on 16/1/23.
//

import SwiftUI


struct WelcomeView: View {
        
    private let LOGIN_BUTTON_LABEL = "Log in"
    private let SIGNUP_BUTTON_LABEL = "Sign up"
    private let CONTINUE_AS_GUEST_LABEL = "Continue as guest"
    
    var body: some View {
            
        NavigationView {
        
            VStack {
                
                Spacer()
                
                // Go to sign up button
                NavigationLink(destination: SignUpView(), label: {
                    Text(SIGNUP_BUTTON_LABEL)
                        .modifier(ButtonViewModifier(foregroundColor: .white, backgroundColor: .purple))
                })
                
                // Go to log in button
                NavigationLink(destination: LoginView(), label: {
                    Text(LOGIN_BUTTON_LABEL)
                        .modifier(ButtonViewModifier(foregroundColor: .purple, backgroundColor: .white))
                })
                
                // Continue as a guest label
                Text(CONTINUE_AS_GUEST_LABEL)
                    .padding(.top, 30)
                    .padding(.bottom, 30)
                    .foregroundColor(.white)
            }
            .background(Image("background-blue"))
            .padding(20)
        }
        .accentColor(Color(.label))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
