//
//  SignInView.swift
//  NextStop
//
//  Created by Вадим Игнатенко on 24.02.25.
//

import SwiftUI

struct SignInView: View {
    
    private var viewModel = SignInViewModel()
    
    
    var body: some View {
        ZStack {
            Image(viewModel.nameImageForBackground)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
            VStack(spacing: 15) {
                Spacer()
                Text(viewModel.nameAppForLabel)
                    .font(.system(size: 32, weight: .bold, design: .default))
                    .foregroundColor(.white)
                    .padding()
                Spacer()

                ButtonSignIn(titleForButton: viewModel.titleButtonSignInWithApple,
                             logoLabel: viewModel.logoButtonSignInWithApple,
                             firstColorGradient: Color(#colorLiteral(red: 0.2605174184, green: 0.2605243921, blue: 0.260520637, alpha: 1)),
                             secondColorGradient: .black,
                             colorForTextButton: .white
                )
                
                ButtonSignIn(titleForButton: viewModel.titleButtonSignInWithGoogle,
                             firstColorGradient: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)),
                             secondColorGradient: Color(#colorLiteral(red: 0.6642242074, green: 0.6642400622, blue: 0.6642315388, alpha: 1)),
                             colorForTextButton: .black)
                .padding(.bottom, 60)
            }
        }
    }
}

#Preview {
    SignInView()
}
