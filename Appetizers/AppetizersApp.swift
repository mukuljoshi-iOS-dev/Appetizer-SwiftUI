//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Mukul Joshi on 09/01/24.
//

import SwiftUI

@main
struct AppetizersApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetizerTabView().environmentObject(order)
//            MyView()
        }
    }
}




struct MyView: View {
    var body: some View {
        
        ZStack {
            Color(.orange)
                
            HStack {
             
                VStack {
                    Text("My Alert")
                        .fontWeight(.bold)
                    
                    Rectangle()
                        .frame(height: 3)
                }
                VStack {
                    Text("My Coupons")
                        .fontWeight(.bold)
                    
                    Rectangle()
                    
                        .frame(height: 3)
                        
                }
            }
            .clipShape(
                .rect(
                    topLeadingRadius: 3,
                    bottomLeadingRadius: 0,
                    bottomTrailingRadius: 0,
                    topTrailingRadius: 3
                )
            )
            .frame(width: .infinity, height: 50)
            .padding()
        }
        .ignoresSafeArea()
        
        
    }
}

#Preview {
    MyView()
}
