//
//  SparringSecureTextField.swift
//  Sparring
//
//  Created by Wojciech Kulas on 26/10/2020.
//

import SwiftUI

struct SparringSecureTextField: View {
    
    // MARK: ENVIRONMENTS VARIABLES
    
    @Environment (\.colorScheme) private var colorScheme
    
    // MARK: - BINDINGS
    
    @Binding public var secureInput: String
    
    // MARK: - STATES
    
    @State private var isInputVisible: Bool = false
    
    // MARK: - PUBLIC PROPERTIES
    
    public let securePlaceholder: String
    public let secureImageName: String
    
    // MARK: - BODY PROPERTY
    
    var body: some View {
        HStack {
            Image(secureImageName)
                .padding(.trailing)
            
            if isInputVisible {
                TextField(securePlaceholder, text: $secureInput)
                    .font(.custom("Helvetica", size: 18))
                    .foregroundColor(colorScheme == .dark ? .gullGray : .grannySmith)
            } else  {
                SecureField(securePlaceholder, text: $secureInput)
                    .font(.custom("Helvetica", size: 18))
                    .foregroundColor(colorScheme == .dark ? .gullGray : .grannySmith)
            }
            
            Button(action: { isInputVisible.toggle() }) {
                Image("password_eye_icon")
                    .padding([.trailing, .leading])
            }
        }
        .padding()
    }
}

struct SparringSecureTextField_Previews: PreviewProvider {
    static var previews: some View {
        SparringSecureTextField(secureInput: .constant("passsword"), securePlaceholder: "password", secureImageName: "password_icon")
    }
}
