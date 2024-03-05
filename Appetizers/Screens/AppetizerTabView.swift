//
//  ContentView.swift
//  Appetizers
//
//  Created by Mukul Joshi on 09/01/24.
//

import SwiftUI

struct AppetizerTabView: View {
    
    @EnvironmentObject var orders: Order
        
    var body: some View {
        TabView {
            AppetizerListView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            AccountView()
                .tabItem {
                    Label("Account", systemImage: "person")
                }
            
            OrderView()
                .tabItem {
//                    Image(systemName: "bag")
//                    Text("Order")
                    Label("Order", systemImage: "bag")
                }
                .badge(orders.items.count)
        }
    }
}

#Preview {
    AppetizerTabView()
}
