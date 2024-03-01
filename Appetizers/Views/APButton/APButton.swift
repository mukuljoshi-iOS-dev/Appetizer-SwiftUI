//
//  APButton.swift
//  Appetizers
//
//  Created by Mukul Joshi on 30/01/24.
//

import SwiftUI

struct APButton: View {
    
    let title: LocalizedStringKey
    
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 260, height: 50)
            .foregroundColor(.white)
            .background(LinearGradient(colors: [.brandPrimary, .green], startPoint: .topLeading, endPoint: .bottomTrailing))
            .cornerRadius(6.0)
    }
}

#Preview {
    APButton(title: "Test")
}
