//
//  TextFieldButtonViewModifier.swift
//  LoginScreen
//
//  Created by Jaime Lucea on 26/1/23.
//

import Foundation
import SwiftUI

//
// This ViewModifier will give a TextField the looks of a wide colored button with rounded corners
//
struct ButtonViewModifier : ViewModifier {
    
    var foregroundColor : Color
    var backgroundColor : Color
    
    let CORNER_RADIUS : CGFloat = 10
    let HEIGHT : CGFloat = 45
    
    func body(content: Content) -> some View {
        content
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: HEIGHT)
            .background(backgroundColor)
            .foregroundColor(foregroundColor)
            .cornerRadius(CORNER_RADIUS)
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(backgroundColor, lineWidth: 2))
            .padding(.top,8)
    }

}
