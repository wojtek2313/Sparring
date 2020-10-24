//
//  BackgroundView.swift
//  Sparring
//
//  Created by Wojciech Kulas on 22/10/2020.
//

import SwiftUI

struct BackgroundView: View {
    
    // MARK: - ENVIRONMENT VARIABLES
    
    @Environment (\.colorScheme) private var colorScheme
    
    // MARK: - BODY PROPERTY
    
    @ViewBuilder
    var body: some View {
        if colorScheme == .dark {
            LinearGradient(gradient: .ebonyClay, startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
        } else {
            Color(.white)
        }
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
    }
}
