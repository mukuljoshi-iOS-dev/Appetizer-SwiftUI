//
//  EmptyState.swift
//  Appetizers
//
//  Created by Mukul Joshi on 31/01/24.
//

import SwiftUI

struct EmptyState: View {
    
    let imageName: String
    let message: String
    
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea()
            
            VStack {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                
                Text(message)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .padding()
            }
            .offset(y: -50.0)
        }
    }
}

#Preview {
    EmptyState(imageName: "empty-order", message: "This is a test message. Checkng the padding is working or not.")
}
