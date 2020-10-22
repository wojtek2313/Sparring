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
        ZStack {
            BackgroundView()
            HeaderView(title: "Wellcome!")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
