//
//  SparringBackButtonView.swift
//  Sparring
//
//  Created by Wojciech Kulas on 30/10/2020.
//

import SwiftUI

struct SparringBackButtonView: View {
    
    // MARK: - ENVIRONMENTS VARIABLES
    
    @Environment(\.presentationMode) private var presentationMode
    
    // MARK: - BODY PROPERTY
    
    var body: some View {
        Button(action: {
            presentationMode.wrappedValue.dismiss()
        }) {
            Image("arrow_next_icon")
                .rotationEffect(.degrees(180))
        }
        .frame(width: 58, height: 58)
        .darkGreenViewModifier()
        .padding(.leading)
    }
}

struct SparringBackButtonView_Previews: PreviewProvider {
    static var previews: some View {
        SparringBackButtonView()
    }
}
