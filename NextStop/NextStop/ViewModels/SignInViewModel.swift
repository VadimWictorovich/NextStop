//
//  SignInViewModel.swift
//  NextStop
//
//  Created by Вадим Игнатенко on 25.02.25.
//

import SwiftUI


protocol SignInViewModelProtocol {
    var nameImageForBackground: String { get }
    var nameAppForLabel: String { get }
    var titleButtonSignInWithApple: String { get }
    var logoButtonSignInWithApple: Image { get }
    var titleButtonSignInWithGoogle: String { get }
}


final class SignInViewModel: SignInViewModelProtocol {
    
    struct Properties {
        let nameImageForBackground: String
        let nameAppForLabel: String
        let titleButtonSignInWithApple: String
        let logoButtonSignInWithApple: Image
        let titleButtonSignInWithGoogle: String
    }
    
    private let properties = Properties(nameImageForBackground: "SignInBackground2",
                                        nameAppForLabel: "NextStop",
                                        titleButtonSignInWithApple: "Войти с Apple",
                                        logoButtonSignInWithApple: Image(systemName: "apple.logo"),
                                        titleButtonSignInWithGoogle: "Войти с Google")
    
    var nameImageForBackground: String { properties.nameImageForBackground }
    var nameAppForLabel: String { properties.nameAppForLabel }
    var titleButtonSignInWithApple: String { properties.titleButtonSignInWithApple }
    var logoButtonSignInWithApple: Image { properties.logoButtonSignInWithApple }
    var titleButtonSignInWithGoogle: String { properties.titleButtonSignInWithGoogle }
    let logoButtonSignInWithGoogle: Image? = nil
}
