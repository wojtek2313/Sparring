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
        NavigationView {
            ZStack(alignment: .leading) {
                BackgroundView()
                VStack {
                    signInHeader()
                    signInButton()
                }
            }
        }
    }
    
    // MARK: - PRIVATE METHODS
    
    private func signInHeader() -> some View {
        return HStack {
            VStack(alignment: .leading) {
                HeaderView(title: "login_wellcome".localized)
                SubHeaderView(title: "login_sign_in_to_continue".localized)
            }
            .padding(.leading)
            Spacer()
        }
    }
    
    private func signInButton() -> some View {
        return Button(action: { print("test")}, label: {
            SparringMainButtonView(title: "login_sign_in".localized)
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
