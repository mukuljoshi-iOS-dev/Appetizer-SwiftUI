//
//  AppetizierListViewModel.swift
//  Appetizers
//
//  Created by Mukul Joshi on 12/01/24.
//

import Foundation

@MainActor final class AppetizierListViewModel: ObservableObject {
    
    @Published var appetizers: [Appetizer] = []
    @Published var alertItem: AlertItem?
    @Published var isLoading = false
    @Published var isShowingDetail = false
    @Published var selectedAppetizer: Appetizer?
    
//    func getAppetizers() {
//        isLoading = true
//        NetworkManager.shared.getAppetizers { [weak self] result in
//            DispatchQueue.main.async {
//                self?.isLoading = false
//                switch result {
//                    case .success(let appetizers):
//                        self?.appetizers = appetizers
//                    case let .failure(error):
////                        print(error.localizedDescription)
//                        switch error {
//                            case .invalidURL:
//                                self?.alertItem = AlertContext.invalidURL
//                                
//                            case .invalidResponse:
//                                self?.alertItem = AlertContext.invalidResponse
//
//                            case .invalidData:
//                                self?.alertItem = AlertContext.invalidData
//
//                            case .unableToComplete:
//                                self?.alertItem = AlertContext.unableToComplete
//
//                        }
//                }
//            }
//        }
//    }
    
    func getAppetizers()  {
        isLoading = true
        Task {
            do {
                let tempAppetizers =  try await NetworkManager.shared.getAppetizers()
                //                DispatchQueue.main.async {[weak self] in               // use @mainActor for main thread
                self.appetizers =  tempAppetizers
                self.isLoading = false
                //                }
            } catch {
                //                DispatchQueue.main.async {[weak self] in
                if let apError = error as? APErrors {
                    switch apError {
                        case .invalidURL:
                            self.alertItem = AlertContext.invalidURL
                            
                        case .invalidResponse:
                            self.alertItem = AlertContext.invalidResponse
                            
                        case .invalidData:
                            self.alertItem = AlertContext.invalidData
                            
                        case .unableToComplete:
                            self.alertItem = AlertContext.unableToComplete
                    }
                } else {
                    self.alertItem = AlertContext.genericError
                }
                self.isLoading = false
                //                }
            }
        }
        
//        NetworkManager.shared.getAppetizers { [weak self] result in
//            DispatchQueue.main.async {
//                self?.isLoading = false
//                switch result {
//                    case .success(let appetizers):
//                        self?.appetizers = appetizers
//                    case let .failure(error):
//                        //                        print(error.localizedDescription)
//                        switch error {
//                            case .invalidURL:
//                                self?.alertItem = AlertContext.invalidURL
//                                
//                            case .invalidResponse:
//                                self?.alertItem = AlertContext.invalidResponse
//                                
//                            case .invalidData:
//                                self?.alertItem = AlertContext.invalidData
//                                
//                            case .unableToComplete:
//                                self?.alertItem = AlertContext.unableToComplete
//                                
//                        }
//                }
//            }
//        }
    }
}
