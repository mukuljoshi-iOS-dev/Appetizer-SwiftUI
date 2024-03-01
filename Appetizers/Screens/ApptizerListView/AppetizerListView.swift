//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Mukul Joshi on 09/01/24.
//

import SwiftUI

struct AppetizerListView: View {
    
    @StateObject var viewModel = AppetizierListViewModel()
    
    var body: some View {
        ZStack {
            NavigationView {
                List(viewModel.appetizers) { appetizer in
                    AppetizerListCellView(appetizer: appetizer)
//                        .listRowSeparator(.hidden)
                        .listRowSeparatorTint(.brandPrimaryColor)
                        .onTapGesture {
                            viewModel.isShowingDetail = true
                            viewModel.selectedAppetizer = appetizer
                        }
                }
                    .navigationTitle("🍟 Apptizers")
                    .listStyle(.plain)
                    .disabled(viewModel.isShowingDetail)
            }
//            .onAppear{
//                viewModel.getAppetizers()
//            }
            .task{
                viewModel.getAppetizers()
            }
            
            .blur(radius: viewModel.isShowingDetail ? 20 : 0)
            
            if viewModel.isLoading {
                LoadingView()
            }
            
            if viewModel.isShowingDetail {
                AppetizerDetailView(appetizer: viewModel.selectedAppetizer ?? MockData.sampleAppetizer,
                                    isShowingDetailView: $viewModel.isShowingDetail)
            }
            
        }

        .alert(item: $viewModel.alertItem) { item in
            Alert(
                title: item.title,
                message: item.message,
                dismissButton: item.dissmissButton
            )
        }
    }
}

#Preview {
    AppetizerListView()
}
 
