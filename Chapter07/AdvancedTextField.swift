//
//  AdvancedTextField.swift
//  Chapter07
//
//  Created by Mike Panitz on 4/16/23.
//

import SwiftUI

@available(iOS 15.0, *)
struct AdvancedTextFieldView: View {
    @State var userName = ""
    @State var userHeroName = ""
    @State var message = ""
    
    var body: some View {
        VStack {
            Text("Advanced TextFields")
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
                    SecureField(text: $userHeroName, prompt: Text("Password")) {
                        Text("Password")

                    }
                   
                    
                }
                
                Button("Log in"){
                    if(userName == "AwesomeBob" && userHeroName == "AwesomePassword"){
                        print("You have logged in successfully")
                    }
                    else{
                        print("Invalid Login")
                    }
                }
                Spacer()
                Button("Forgot password?"){
                    
                }
                
                /*Spacer()
                Divider()
                Spacer()*/
            }
            
           /* VStack {
                Text("Different keyboard types:")
                TextField("Type here", text: $message)
                    .keyboardType(.phonePad)
                    .submitLabel(.done)
                    .padding()
                
                Spacer()
                
                Text("Dismissing the keyboard:")
                TextField("Type here", text: $message)
                    .submitLabel(.done)
                    .padding()
                
                Spacer()
            }*/
        }
    }
}

struct AdvancedTextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        AdvancedTextFieldView()
    }
}


