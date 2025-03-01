//
//  ContentView.swift
//  NextStop
//
//  Created by Вадим Игнатенко on 21.02.25.
//

import SwiftUI

struct MainView: View {
    
    @StateObject private var viewModel = MainViewModel()
    private let gradientBackground = LinearGradient(colors: [Color(#colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)), Color(#colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1)),Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))], startPoint: .top, endPoint: .bottom)
    private let gradientBackgroundButton = LinearGradient(colors: [Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)),Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1))], startPoint: .topTrailing, endPoint: .bottom)
    
    
    var body: some View {
        ZStack {
            gradientBackground
                .ignoresSafeArea()
            VStack {
                Spacer()
                HStack() {
                    TextWithGradient(textLabel: "Some text",
                                     firstColorGradient: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)),
                                     secondColorGradient: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)),
                                     thirdColorGradient: Color(#colorLiteral(red: 0.8374180198, green: 0.8374378085, blue: 0.8374271393, alpha: 1)),
                                     size: 35,
                                     weight: .bold)
                    .padding(.leading, 25)
                    Image(systemName: "chevron.down")
                        .font(.system(size: 20, weight: .bold, design: .default))
                        .foregroundColor(Color(#colorLiteral(red: 0.7540688515, green: 0.7540867925, blue: 0.7540771365, alpha: 1)))
                    Spacer()
                    Button { print ("Tap button tap") }
                    label: { Image(systemName: "plus")
                            .font(.system(size: 25, weight: .medium, design: .default))
                            .foregroundColor(.black)
                    }
                        .frame(width: 40, height: 40)
                        .background(gradientBackgroundButton)
                        .cornerRadius(20)
                        
                    Button { print ("Tap button tap") }
                    label: { Image(systemName: "person.circle.fill")
                            .font(.system(size: 25, weight: .medium, design: .default))
                            .foregroundColor(.black)
                    }
                        .frame(width: 40, height: 40)
                        .background(gradientBackgroundButton)
                        .cornerRadius(20)
                        .padding(.trailing, 15)
                }.padding(.bottom, 30)
                GoogleMapView()
                    .frame(width: 320, height: 510)
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
