//
//  AccountView.swift
//  Appetizers
//
//  Created by Mukul Joshi on 09/01/24.
//

import SwiftUI

struct AccountView: View {
    
    @StateObject var viewModal = AccountViewModal()
    @FocusState private var focusedTextField: FormTextField?

    enum FormTextField {
    case firstName, lastName, email
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Personal Info")) {
                    TextField("First Name", text: $viewModal.user.firstName)
                        .focused($focusedTextField, equals: .firstName)
                        .onSubmit { focusedTextField = .lastName }
                        .submitLabel(.next)
                    
                    TextField("Last Name", text: $viewModal.user.lastName)
                        .focused($focusedTextField, equals: .lastName)
                        .onSubmit { focusedTextField = .email }
                        .submitLabel(.next)

                    TextField("Email", text: $viewModal.user.email)
                        .focused($focusedTextField, equals: .email)
                        .onSubmit { focusedTextField = nil }
                        .submitLabel(.continue)

                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    
                    DatePicker("Birthday",
                               selection: $viewModal.user.birthDate,
                               displayedComponents: .date)
                    
                    Button {
                        viewModal.saveChanges()
                    } label: {
                        Text("Save Changes")
                    }
                }

                Section(header: Text("Requests")) {
                    Toggle("Extra Napkins", isOn: $viewModal.user.extraNapkins)
                    Toggle("Frequent Refills", isOn: $viewModal.user.frequentRefills)
                }
                .toggleStyle(SwitchToggleStyle(tint: .brandPrimary))
                
            }
            .navigationTitle("🖥️ Account")
            .toolbar{
                ToolbarItem(placement: .keyboard) {
                    Button("Dissmiss") { focusedTextField = nil }
                }
            }
        }
        .onAppear  {
            viewModal.retriveUser()
        }
        
        .alert(item: $viewModal.alertItem) { item in
            Alert(
                title: item.title,
                message: item.message,
                dismissButton: item.dissmissButton
            )
        }
    }
}

#Preview {
    AccountView()
}
