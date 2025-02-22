//
//  ContentView.swift
//  NextStop
//
//  Created by Вадим Игнатенко on 21.02.25.
//

import SwiftUI
import Combine

struct ContentView: View {
    
    @StateObject private var viewModel = SettingsViewModel()
    
    var body: some View {
        ZStack {
            Color(viewModel.backgroundColor)
                .ignoresSafeArea()
                .animation(.easeOut(duration: 0.7), value: viewModel.isOn)
            HStack {
                Toggle(viewModel.textTogle, isOn: $viewModel.isOn)
                    .toggleStyle(SwitchToggleStyle(tint: .black))
            }.padding()
        }
    }
}

#Preview {
    ContentView()
}
