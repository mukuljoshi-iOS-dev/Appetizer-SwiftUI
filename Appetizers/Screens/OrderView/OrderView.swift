//
//  OrderView.swift
//  Appetizers
//
//  Created by Mukul Joshi on 09/01/24.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var orders: Order
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach(orders.items) { appetizer in
                            AppetizerListCellView(appetizer: appetizer)
                        }
                        .onDelete(perform: orders.deleteItems)
                    }
                    .listStyle(.plain)
                    
                    Button{
                        
                    } label: {
//                        APButton(title: "$\(orders.totalPrice, specifier: "%.2f") - Place Order")
                        Text("$\(orders.totalPrice, specifier: "%.2f") - Place Order")
                    }
                    .modifier(standardButtonStyle())
                    .padding(.bottom, 25)
                }
                if orders.items.isEmpty {
                    EmptyState(
                        imageName: "empty-order",
                        message: "You have no items in your order. \nPlease add an appetizer!"
                    )
                }
            }
            .navigationTitle("📋 Orders")
        }
    }
}

#Preview {
    OrderView()
}
