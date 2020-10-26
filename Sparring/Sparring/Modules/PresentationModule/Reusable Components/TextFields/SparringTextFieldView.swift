//
//  SparringTextFieldView.swift
//  Sparring
//
//  Created by Wojciech Kulas on 26/10/2020.
//

import SwiftUI

struct SparringTextFieldView: View {
    
    // MARK: - ENVIRONMENT VARIABLES
    
    @Environment (\.colorScheme) private var colorScheme
    
    // MARK: - PUBLIC PROPERTIES
    
    public var textPlaceholder: String
    public var textfieldImageName: String
    public var alertText: String? = nil
    
    // MARK: - BINDINGS
    
    @Binding var textFieldInput: String
    @Binding var displayAlert: Bool
    
    var body: some View {
        HStack {
            Image(textfieldImageName)
                .padding(.trailing)
            VStack(alignment: .leading) {
                TextField(textPlaceholder, text: $textFieldInput, onCommit: {
                    print("Change textfiled")
                })
                .font(.custom("Helvetica", size: 18))
                .foregroundColor(colorScheme == .dark ? .gullGray : .grannySmith)
                if let alertText = alertText, displayAlert {
                    Text(alertText)
                        .font(.custom("Helvetica", size: 8))
                        .foregroundColor(.coralRed)
                        .animation(.easeIn)
                }
            }
        }
        .padding()
    }
}

struct SparringTextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        SparringTextFieldView(textPlaceholder: "Type Your name...", textfieldImageName: "username_icon", alertText: "Password should have at least 8 characters", textFieldInput: .constant(""), displayAlert: .constant(true))
    }
}
