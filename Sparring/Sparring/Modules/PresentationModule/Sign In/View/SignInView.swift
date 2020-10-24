//
//  ContentView.swift
//  Sparring
//
//  Created by Wojciech Kulas on 22/10/2020.
//

import SwiftUI
import CoreData

struct SignInView: View {
    
    // MARK: - ENVIRONMENT VARIABLES
    
    @Environment(\.colorScheme) var colorScheme
    
    // MARK: - BODY PROPERTY
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .leading) {
                BackgroundView()
                VStack {
                    signInHeader()
                    signInButton()
                    resetPasswordButton()
                    NavigationLink(destination: CreateAccount()) {
                        HStack {
                            Spacer()
                            Text("Create an account")
                                .font(.custom("Helvetica", size: 16))
                                .bold()
                            Spacer()
                        }
                        .frame(height: 58)
                    }
                    .darkGreenViewModifier()
                    .padding()
                }
            }
        }
    }
}

// MARK: - PRIVATE METHODS

extension SignInView {
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
    
    private func resetPasswordButton() -> some View {
        return NavigationLink(destination: ResetView()) {
            Text("login_forgot_password".localized)
                .foregroundColor(
                    colorScheme == .dark ? .gullGray : .grannySmith
                )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
