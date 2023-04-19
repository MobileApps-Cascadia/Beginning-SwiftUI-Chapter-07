//
//  Login.swift
//  Chapter07
//
//  Created by Student Account on 4/18/23.
//

import SwiftUI

struct Login: View {
    @State var username: String = ""
    @State private var password: String = ""
    @State private var showAlert = false
    @State private var alertMessage = ""
    var body: some View {
        VStack{
            Text("Login")
            TextField("Username/Email", text: $username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            SecureField("Password", text: $password)
                           .textFieldStyle(RoundedBorderTextFieldStyle())
                           .padding()
            
            Button("Login"){
                showAlert = true
                if(username == "AwesomeBob" && password == "AwesomePassword"){
                    alertMessage = "Confirmed Login"
                }else{
                    alertMessage = "Invalid Login"
                }
            }
            .alert(isPresented: $showAlert){
                Alert(title: Text(alertMessage))
            }
            .padding()
            
            Button("Forgot Password"){
            }
            .padding()
            Button("Create a New Account"){
            }
        }
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
