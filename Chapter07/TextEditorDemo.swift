//
//  TextEditorDemo.swift
//  Chapter07
//
//  Created by Mike Panitz on 4/16/23.
//

import Foundation


import SwiftUI

@available(iOS 15.0, *)
struct TextEditorDemo: View {
    @State var theText: String = ""
    @FocusState var dismissKeyboard: Bool
    
    var body: some View {
        
        VStack {
            Text("TextEditor Demo")
                .font(.largeTitle)
            
            // This was the textbook's approach
//            TextEditor(text: $theText)
//                .focused($dismissKeyboard)
            // These next lines surround the TextEditor with a rounded border
//                .padding(5)
//                .background(
//                    RoundedRectangle(cornerRadius: 10)
//                        .stroke(Color.blue, lineWidth: 2)
//                )
//                .padding(5)
//
//             Button("Hide Keyboard") {
//                 dismissKeyboard = false
//             }
            
            TextEditor(text: $theText)
                .border(Color.gray, width: 1)
                .padding() // so we can see the box we're supposed to tap in
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

struct TextEditorDemo_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorDemo()
    }
}
