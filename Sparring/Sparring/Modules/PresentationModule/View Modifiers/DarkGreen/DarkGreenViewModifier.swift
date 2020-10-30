//
//  DarkGreenViewModifier.swift
//  Sparring
//
//  Created by Wojciech Kulas on 24/10/2020.
//

import SwiftUI

struct DarkGreenViewModifier: ViewModifier {
    
    // MARK: - ENVIRONMENT VARIABLES
    
    @Environment (\.colorScheme) private var colorScheme
    
    // MARK: - BODY FUNCTION
    
    func body(content: Content) -> some View {
        content
            .foregroundColor(.shamrock)
            .background(colorScheme == .dark ? Color.plantation : Color.grannyApple)
            .cornerRadius(12)
    }
}

extension View {
    func darkGreenViewModifier() -> some View {
        self.modifier(DarkGreenViewModifier())
    }
}
