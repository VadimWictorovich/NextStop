//
//  TextWithGradient.swift
//  NextStop
//
//  Created by Вадим Игнатенко on 25.02.25.
//

import SwiftUI

struct TextWithGradient: View {
    
    var textLabel: String
    var firstColorGradient: Color
    var secondColorGradient: Color
    var gradient: LinearGradient {
        .init(colors: [firstColorGradient, secondColorGradient], startPoint: .top, endPoint: .bottom)
    }
    
    var body: some View {
        Text(textLabel)
            .font(.system(size: 45, weight: .bold, design: .default))
            //.font(.largeTitle)
            .bold()
            .foregroundStyle(gradient)
    }
}

#Preview {
    TextWithGradient(textLabel: "Hello", firstColorGradient: .red, secondColorGradient: .green)
}
