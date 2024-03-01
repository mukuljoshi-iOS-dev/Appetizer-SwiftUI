//
//  CustomModifier.swift
//  Appetizers
//
//  Created by Mukul Joshi on 05/02/24.
//

import SwiftUI

struct standardButtonStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
        .buttonStyle(.bordered)
        .tint(.brandPrimaryColor)
        .controlSize(.large)
    }
}
