//
//  AppetizerListCellView.swift
//  Appetizers
//
//  Created by Mukul Joshi on 09/01/24.
//

import SwiftUI

struct AppetizerListCellView: View {
    let appetizer: Appetizer
    
    var body: some View {
        HStack {
//            Image("sampleAppetizer")
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//                .frame(width: 120, height: 90)
//                .cornerRadius(8.0)
            
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 90)
                .cornerRadius(8.0)
            
//            AsyncImage(url: URL(string: appetizer.imageURL)) { phase in
//                            switch phase {
//                            case .empty:
//                                    Image(systemName: "fork.knife.circle.fill")
//                                        .resizable()
//                                        .aspectRatio(contentMode: .fit)
//                                        .frame(width: 120, height: 70)
//                                        .cornerRadius(8.0)
//                                    Text("Loading Image...")
//                            case .success(let image):
//                                    image
//                                    .resizable()
//                                    .aspectRatio(contentMode: .fit)
//                                    .frame(width: 120, height: 90)
//                                    .cornerRadius(8.0)
//                            case .failure:
//                                Text("Failed to load image.")
//                            @unknown default:
//                                Text("Unknown state.")
//                            }
//                        }
            
            VStack(alignment: .leading, spacing: 5) {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.medium)
                
                Text("$\(appetizer.price, specifier: "%.2f")")
                    .foregroundColor(.secondary)
                    .fontWeight(.semibold)
            }
            .padding(.leading)
        }
    }
}

#Preview {
    AppetizerListCellView(appetizer: MockData.sampleAppetizer)
}
