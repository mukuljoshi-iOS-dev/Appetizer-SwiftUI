//
//  AppetizerDetailView.swift
//  Appetizers
//
//  Created by Mukul Joshi on 29/01/24.
//

import SwiftUI

struct AppetizerDetailView: View {
    
    @EnvironmentObject var order: Order
    
    let appetizer: Appetizer
    @Binding var isShowingDetailView : Bool
    
    var body: some View {
            VStack {
                AppetizerRemoteImage(urlString: appetizer.imageURL)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300, height: 225)
                
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                Text(appetizer.description)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()
                
                HStack(spacing: 40) {
                    NutritionInfo(title: "Calories", value: appetizer.calories)
                    NutritionInfo(title: "Carbs", value: appetizer.carbs)
                    NutritionInfo(title: "Protein", value: appetizer.protein)
                }
                
                Spacer()
                
                Button {
                    order.add(appetizer)
                    isShowingDetailView = false
                } label: {
//                    APButton(title: "$\(appetizer.price, specifier: "%.2f") - Add To Order")
                    Text("$\(appetizer.price, specifier: "%.2f") - Add To Order")
                }
//                .buttonStyle(.bordered)
//                .tint(.brandPrimaryColor)
//                .controlSize(.large)
                .modifier(standardButtonStyle())
                .padding(.bottom, 30)
        }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12.0)
        .shadow(radius: 40)
        .overlay(alignment: .topTrailing) {
            Button {
                print("Dismiss")
                isShowingDetailView = false
            } label: {
                XDismissButton()
            }
        }
    }
}

#Preview {
    AppetizerDetailView(appetizer: MockData.sampleAppetizer, 
                        isShowingDetailView: .constant(true))
}

struct NutritionInfo: View {
    
    let title: String
    let value: Int
    
    var body: some View {
        VStack(spacing: 5) {
            Text(title)
                .bold()
                .font(.caption)
            
            Text("\(value)")
                .foregroundColor(.secondary)
                .fontWeight(.semibold)
                .italic()
        }
    }
}
