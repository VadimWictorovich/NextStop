//
//  SignInView.swift
//  NextStop
//
//  Created by Вадим Игнатенко on 24.02.25.
//

import SwiftUI

struct SignInView: View {
    var body: some View {
        ZStack {
            Image("SignInBackground")
            VStack {
                ButtonSignIn(titleForButton: "Войти с Apple",
                             firstColorGradient: Color(#colorLiteral(red: 0.2605174184, green: 0.2605243921, blue: 0.260520637, alpha: 1)),
                             secondColorGradient: .black,
                             colorForTextButton: .white)
                
                
                ButtonSignIn(titleForButton: "Войти с Google",
                             firstColorGradient: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)),
                             secondColorGradient: Color(#colorLiteral(red: 0.5741485357, green: 0.5741624236, blue: 0.574154973, alpha: 1)),
                             colorForTextButton: .black)
                
            }
        }
    }
}

#Preview {
    SignInView()
}
