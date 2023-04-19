//
//  TextFields.swift
//  Chapter07
//
//  Created by Student Account on 4/18/23.
//

import SwiftUI

struct TextFields: View {
    @State var text: String = ""
    @State private var secureText: String = ""
    var body: some View {
        VStack {
            Text("Text Fields")
                .font(.largeTitle)
            
            TextEditor(text: $text)
                .frame(height: 200)
                .border(Color.gray, width: 1)
                .disableAutocorrection(true)
                .padding() // so we can see the box we're supposed to tap in
            
            Text("Here is text: \(text)")
            
            SecureField("Enter secure text", text: $secureText)
                           .textFieldStyle(RoundedBorderTextFieldStyle())
                           .padding()
                       
                       Text("You entered secure text: \(secureText)")
                           .padding()
            
            Text("Text Editor")
            TextEditor(text: $text)
                .frame(width: 300, height: 100)
                            .border(Color.gray, width: 1)
            
            .toolbar {
                ToolbarItem(placement: .keyboard) {
                    Button("Done") {
                        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                    }
                }
            }
            
            
        }
    }
}

struct TextFields_Previews: PreviewProvider {
    static var previews: some View {
        TextFields()
    }
}
