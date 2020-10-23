//
//  SparringMainButtonView.swift
//  Sparring
//
//  Created by Wojciech Kulas on 23/10/2020.
//

import SwiftUI

struct SparringMainButtonView: View {
    
    // MARK: - ENVIRONMENT VARIABLES
    
    @Environment (\.colorScheme) private var colorScheme
    
    // MARK: - PRIVATE PROPERTIES
    
    private var title: String
    
    // MARK: - STRUCT CONSTRUCTOR
    
    init(title: String) {
        self.title = title
    }
    
    // MARK: - BODY PROPERTY
    
    var body: some View {
        HStack {
            Spacer()
            Text(title)
                .font(.custom("Helvetica", size: 16))
                .bold()
            Image("arrow_next_icon")
                .renderingMode(.template)
            Spacer()
        }
        .foregroundColor(colorScheme == .dark ? .white : .gableGreen)
        .frame(height: 58)
        .background(LinearGradient(gradient: .shamrock, startPoint: .bottom, endPoint: .top))
        .cornerRadius(12)
        .shadow(color: .caribbeanGreen, radius: 2, x: 0.0, y: 2.0)
        .padding()
    }
}

struct SparringMainButtonView_Previews: PreviewProvider {
    static var previews: some View {
        SparringMainButtonView(title: "Next")
    }
}
