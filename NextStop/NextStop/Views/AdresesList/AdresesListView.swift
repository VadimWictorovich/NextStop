//
//  AdresesListView.swift
//  NextStop
//
//  Created by Вадим Игнатенко on 4.03.25.
//

import SwiftUI

struct AdresesListView: View {
    
    
    var body: some View {
        VStack {
            NavigationView {
                ZStack {
                    List {
                        Text("Hello, World!")
                            .navigationTitle("Adreses")
                            .navigationViewStyle(.columns)
                    }
                    VStack {
                        Spacer()
                        HStack{
                            Button { print ("Tap button tap") }
                            label: { Image(systemName: "chevron.down.circle").font(.system(size: 25, weight: .medium, design: .default)).foregroundColor(.black) }
                                .frame(width: 40, height: 40)
                                .cornerRadius(20)
                            Spacer()

                            Button { print ("Tap button tap") }
                            label: { Text ("Some button").font(.system(size: 20, weight: .bold, design: .default)) }
                                .frame(width: 200, height: 40)
                                .background(Color.red)
                                .cornerRadius(15)
                            Spacer()
                            Spacer()
                        }.padding()
                    }
                }
            }
        }
    }
}

#Preview {
    AdresesListView()
}
