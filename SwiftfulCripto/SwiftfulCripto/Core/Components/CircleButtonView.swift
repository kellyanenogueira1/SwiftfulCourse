//
//  CircleButtonView.swift
//  SwiftfulCripto
//
//  Created by Maria Kellyane da Silva Nogueira Sá on 22/12/23.
//

import SwiftUI

struct CircleButtonView: View {
    
    let iconName: String
    
    var body: some View {
        Image(systemName: iconName)
            .font(.headline)
            .foregroundColor(Color.theme.accent)
            .frame(width: 50, height: 50)
            .background(
                Circle()
                    .foregroundColor(Color.theme.background)
            )
            .shadow(
                color: Color.theme.accent.opacity(0.25),
                radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 0, y: 0
            )
            .padding()
    }
}

#Preview {
    Group {
        CircleButtonView(iconName: "info")
            .previewLayout(.sizeThatFits)
        
        CircleButtonView(iconName: "plus")
            .previewLayout(.sizeThatFits)
            .colorScheme(.dark)
    }
}
