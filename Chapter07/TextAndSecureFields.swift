//
//  TextAndSecureFields.swift
//  Chapter07
//
//  Created by Mike Panitz on 4/16/23.
//

import Foundation
import SwiftUI

struct TextAndSecureView: View {
    @State var userName = ""
    @State var userFamilyName = ""
    @State var userHeroName = ""
    var body: some View {
        VStack {
            Text("Basic TextFields")
                .font(.largeTitle)
            
            // More than 10 subviews
            // so we need to bundle-up some into sub-VStacks:
            VStack {
                Spacer()
                
                Text("Type your name here:")
                TextField(".e.g., Mike", text: $userName)
                    .submitLabel(.done)
                    .frame(width: 100)
                
                Text("Your name: " + userName)
                    .frame(width:200, height: 50)
                
                Spacer()
                Divider()
                Spacer()
            }
            
            VStack {
                Text("Type your super hero name here:")
                SecureField(".e.g., Batman", text: $userHeroName)
                    .submitLabel(.done)
                Text("Secretly, you are the super hero  " + userHeroName)
                
                
                Spacer()
                Divider()
                Spacer()
            }
            
            VStack {
                Text("Type your name here:")
                TextField(".e.g., Mike", text: $userName)
                    .textFieldStyle(.roundedBorder)
                    .disableAutocorrection(true)
                    .foregroundColor(.green)
                    .padding()
                    .background(.pink)
                Text("Your name: " + userName)
                
                Spacer()
            }

        }
        .padding()
    }
}

struct TextAndSecureView_Previews: PreviewProvider {
    static var previews: some View {
        TextAndSecureView()
    }
}
