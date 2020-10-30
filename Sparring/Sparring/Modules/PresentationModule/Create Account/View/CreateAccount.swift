//
//  CreateAccount.swift
//  Sparring
//
//  Created by Wojciech Kulas on 24/10/2020.
//

import SwiftUI

struct CreateAccount: View {
    
    // MARK: - STATES VARIABLES
    
    @State private var mailTextFieldInput: String = ""
    @State private var usernameTextFieldInput: String = ""
    @State private var passwordTextFieldInput: String = ""
    @State private var repeatPasswordTextFieldInput: String = ""
    
    @State private var dispalayMailAlert: Bool = false
    
    // MARK: - BODY PROPERTY
    
    var body: some View {
        ZStack {
            BackgroundView()
            VStack {
                createAccountHeader()
                SparringTextFieldView(textPlaceholder: "craete_account_email".localized,
                                      textfieldImageName: "mail_icon",
                                      alertText: "create_account_wrong_email".localized,
                                      textFieldInput: $mailTextFieldInput,
                                      displayAlert: $dispalayMailAlert)
                
                SparringTextFieldView(textPlaceholder: "craete_account_username".localized,
                                      textfieldImageName: "username_icon",
                                      textFieldInput: $usernameTextFieldInput,
                                      displayAlert: .constant(false))
                
                SparringSecureTextField(secureInput: $passwordTextFieldInput,
                                        securePlaceholder: "create_account_password".localized,
                                        secureImageName: "password_icon")
                
                SparringSecureTextField(secureInput: $repeatPasswordTextFieldInput,
                                        securePlaceholder: "create_account_repeat_password".localized,
                                        secureImageName: "password_icon")
                
                createButtonsFooter()
            }
        }
        .navigationBarHidden(true)
    }
}

// MARK: - PRIVATE METHODS

extension CreateAccount {
    private func createAccountHeader() -> some View {
        return HStack {
            VStack(alignment: .leading) {
                HeaderView(title: "create_account_hello".localized)
                SubHeaderView(title: "create_account_lets_introduce".localized)
            }
            .padding(.leading)
            Spacer()
        }
    }
    
    private func createButtonsFooter() -> some View {
        return HStack {
            SparringBackButtonView()
            SparringMainButtonView(title: "Next")
        }
    }
}

struct CreateAccount_Previews: PreviewProvider {
    static var previews: some View {
        CreateAccount()
    }
}
