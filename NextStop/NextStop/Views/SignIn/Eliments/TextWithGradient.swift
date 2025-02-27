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
    var thirdColorGradient: Color? = nil
    var size: CGFloat
    var weight: Font.Weight?
    var gradient: LinearGradient {
        .init(colors: [firstColorGradient, secondColorGradient, thirdColorGradient == nil ? .clear : thirdColorGradient!], startPoint: .top, endPoint: .bottom)
    }
    
    var body: some View {
        Text(textLabel)
            .font(.system(size: size, weight: weight, design: .default))
            .bold()
            .foregroundStyle(gradient)
    }
}

#Preview {
    TextWithGradient(textLabel: "Hello", firstColorGradient: .red, secondColorGradient: .green, size: 30)
}
