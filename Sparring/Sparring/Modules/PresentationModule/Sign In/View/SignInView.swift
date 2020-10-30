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
    
    @Environment(\.colorScheme) private var colorScheme
    
    // MARK: - STATES VARIABLES
    
    @State private var userNameInput: String = ""
    @State private var userPassword: String = ""
    
    // MARK: - BODY PROPERTY
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .leading) {
                BackgroundView()
                VStack {
                    Spacer()
                    signInHeader()
                    
                    SparringTextFieldView(textPlaceholder: "login_name".localized,
                                          textfieldImageName: "username_icon",
                                          textFieldInput: $userNameInput,
                                          displayAlert: .constant(false))
                    
                    SparringSecureTextField(secureInput: $userPassword,
                                            securePlaceholder: "login_password".localized,
                                            secureImageName: "password_icon")
                    Spacer()
                    signInButton()
                    resetPasswordButton()
                    createAnAccountButton()
                    Spacer()
                }
            }
        }.navigationBarHidden(true)
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
                .padding(.bottom)
        }
    }
    
    private func createAnAccountButton() -> some View {
        NavigationLink(destination: CreateAccount()) {
            HStack {
                Spacer()
                Text("login_create_account".localized)
                    .font(.custom("Helvetica", size: 16))
                    .bold()
                Spacer()
            }
            .frame(height: 58)
        }
        .darkGreenViewModifier()
        .padding()
        .padding(.bottom, 45)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
