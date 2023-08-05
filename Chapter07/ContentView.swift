//
//  ContentView.swift
//  Chapter07
//
//  Created by Mike Panitz on 4/16/23.
//

import SwiftUI

struct ContentView: View {
    @available(iOS 15.0, *)
    @State var message = ""
    @FocusState var dismissKeyboard: Bool
    @State private var usernameOrEmail = ""
        @State private var password = ""
    @State private var isLoggedIn = false // Track login status
    
    var body: some View {
        TabView {
           TextAndSecureView()
                .tabItem{
                    Image(systemName: "0.circle")
                    Text("Login")
                    TextField("placeholder text", text: $message)
                    TextField("Username or Email", text: $usernameOrEmail)

                    SecureField("Password", text: $password)
                    
                    Button(action: {
                                   // Perform login validation here
                                   isLoggedIn = true
                               }) {
                                   Text("Login")
                                       .padding()
                               }
                                    
                    
                }
               
            TextAndSecureView()
                .tabItem {
                    Image(systemName: "1.circle")
                    Text("Basic TextFields")
                    
                    TextField("Enter name", text: $message)
                        .textFieldStyle(.roundedBorder)
                        .padding()
                    SecureField("Password", text: $message)
                        .disableAutocorrection(true)
                        .keyboardType(.default)
                        .submitLabel(.done)
                       
                }
           
                
            
            AdvancedTextFieldView()
                .tabItem {
                    Image(systemName: "2.circle")
                    Text("Advanced TextFields")
                   
                }
             
            
            
            TextEditorDemo()
                .tabItem {
                    Image(systemName: "3.circle")
                    Text("Text Editor")
                    TextEditor(text: $message)
                        .focused($dismissKeyboard)
                    Button("Hide keyboard"){
                        dismissKeyboard = false
                    }
                }
        }
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
