//
//  SubHeaderView.swift
//  Sparring
//
//  Created by Wojciech Kulas on 22/10/2020.
//

import SwiftUI

struct SubHeaderView: View {
    
    // MARK: - ENVIRONMENT PROPERTIES
    
    @Environment(\.colorScheme) private var colorScheme
    
    // MARK: - PRIVATE PROPERTIES
    
    private var title: String
    
    // MARK: - STRUCT CONSTRUCTOR
    
    init(title: String) {
        self.title = title
    }
    
    // MARK: - BODY PROPERTY
    
    var body: some View {
        Text(title)
            .font(.custom("Helvetica", size: 24))
            .fontWeight(.light)
            .foregroundColor(
                colorScheme == .dark ? .gullGray : .grannySmith
            )
    }
}

struct SubHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        SubHeaderView(title: "Sign in to continue")
    }
}
