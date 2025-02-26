//
//  ContentView.swift
//  NextStop
//
//  Created by Вадим Игнатенко on 21.02.25.
//

import SwiftUI
import Combine

struct MainView: View {
    
    @StateObject private var viewModel = MainViewModel()
    
    var body: some View {
        ZStack {
            LinearGradient (colors: [Color(#colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)), Color(#colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1)),Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))],
                          startPoint: .top,
                          endPoint: .bottom)
            .ignoresSafeArea()
            VStack {
                Spacer()
                ViewWithMap()
                    .frame(width: 320, height: 500)
                    .cornerRadius(30)
                    .padding()
                Button { print ("Tap button tap") }
                label: { Text ("Some button").font(.system(size: 20, weight: .bold, design: .default)) }
                    .frame(width: 230, height: 50)
                    .foregroundColor( .black)
                    .background(Color(#colorLiteral(red: 0.8374180198, green: 0.8374378085, blue: 0.8374271393, alpha: 1)))
                    .cornerRadius(30)
                    .padding()
            }
        }
    }
}

#Preview {
    MainView()
}
