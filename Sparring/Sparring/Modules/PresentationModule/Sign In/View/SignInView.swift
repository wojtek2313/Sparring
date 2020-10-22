//
//  ContentView.swift
//  Sparring
//
//  Created by Wojciech Kulas on 22/10/2020.
//

import SwiftUI
import CoreData

struct SignInView: View {
    
    // MARK: - BODY PROPERTY
    
    var body: some View {
        ZStack(alignment: .leading) {
            BackgroundView()
            VStack(alignment: .leading) {
                HeaderView(title: "Wellcome!")
                SubHeaderView(title: "Sign in to continue")
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
