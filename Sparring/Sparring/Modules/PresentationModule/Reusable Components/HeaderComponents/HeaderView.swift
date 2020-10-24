//
//  HeaderView.swift
//  Sparring
//
//  Created by Wojciech Kulas on 22/10/2020.
//

import SwiftUI

struct HeaderView: View {
    
    // MARK: - ENVIRONMENT VARIABLES
    
    @Environment (\.colorScheme) private var colorScheme
    
    // MARK: - PRIVATE PROPERTIES
    
    private let title: String
    
    // MARK: - STRUCT CONSTRUCTOR
    
    init(title: String) {
        self.title = title
    }
    
    // MARK: - BODY PROPERTY
    
    var body: some View {
        Text(title)
            .font(.custom("Helvetica", size: 42))
            .bold()
            .foregroundColor(
                colorScheme == .dark ? .white : .gableGreen
            )
            .padding(.bottom, 5)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(title: "Wellcome!")
    }
}
