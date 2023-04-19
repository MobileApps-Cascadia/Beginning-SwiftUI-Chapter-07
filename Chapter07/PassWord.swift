//
//  PassWord.swift
//  Chapter07
//
//  Created by Kenny Luchau on 4/18/23.
//

import SwiftUI

@available(iOS 15.0, *)
struct PassWord: View {
    @State var userName = ""
    @State var password = ""
    @State var message = ""
    
    var body: some View {
        VStack {
            Text("Login Here")
                .font(.largeTitle)
            
            // More than 10 subviews
            // so we need to bundle-up some into sub-VStacks:
            VStack {
                Spacer()
                
                Form {
                    TextField(text: $userName, prompt: Text("Username or email")) {
                        Text("Username")
                    }
                    .keyboardType(.emailAddress)
                    SecureField(text: $password, prompt: Text("Password")) {
                        Text("Password")

                    }
                   
                    
                }
                
                Button("Log in"){
                    if(userName == "AwesomeBob" && password == "AwesomePassword"){
                        print("You have logged in successfully")
                    }
                    else{
                        print("Invalid Login")
                    }
                }
                Spacer()
                Button("Forgot password?"){
                    
                }
            }
        }
    }
}

struct PassWord_Previews: PreviewProvider {
    static var previews: some View {
        AdvancedTextFieldView()
    }
}


