//
//  ButtonSignIn.swift
//  NextStop
//
//  Created by Вадим Игнатенко on 24.02.25.
//

import SwiftUI

struct ButtonSignIn: View {
    
    var heightButton: CGFloat = 50
    var widthButton: CGFloat = 300
    var titleForButton: String
    var firstColorGradient: Color
    var secondColorGradient: Color
    var colorForTextButton: Color
    var gradientForButton: LinearGradient {
        .init(gradient: Gradient(colors: [firstColorGradient, secondColorGradient]), startPoint: .top, endPoint: .bottom)
    }
    
    var body: some View {
        Button {
            print("tap")
        } label: {
            Text(titleForButton)
        }
        .frame(width: widthButton, height: heightButton)
        .foregroundColor(colorForTextButton)
        .background(gradientForButton)
        .cornerRadius(30)
    }
}

#Preview {
    ButtonSignIn(titleForButton: "Войти с Apple",
                 firstColorGradient: .gray,
                 secondColorGradient: .black,
                 colorForTextButton: .white)
}
