//
//  AdresesListView.swift
//  NextStop
//
//  Created by Вадим Игнатенко on 4.03.25.
//

import SwiftUI

struct AdresesListView: View {
    
    
    var body: some View {
        ZStack {
            VStack {
                NavigationView {
                    List {
                        Text("Hello, World!")
                            .navigationTitle("Adreses")
                            .navigationViewStyle(.columns)

                    }
                }
            }
        }
    }
}

#Preview {
    AdresesListView()
}
