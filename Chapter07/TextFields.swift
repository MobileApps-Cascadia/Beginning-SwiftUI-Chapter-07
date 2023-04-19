//
//  TextFields.swift
//  Chapter07
//
//  Created by Kenny Luchau on 4/18/23.
//

import Foundation
import SwiftUI

struct TextFields: View {
    @State var userName = ""
    @State var userFamilyName = ""
    @State var userHeroName = ""
    var body: some View {
        VStack {
            Text("TextFields")
                .font(.largeTitle)
            
            VStack {
                Spacer()
                Text("Type your name here:")
                TextField(".e.g., Kenny", text: $userName)
                    .textFieldStyle(.roundedBorder)
                    .disableAutocorrection(true)
                    .foregroundColor(.green)
                    .padding()
                    .background(.pink)
                Text("Your name: " + userName)
                
                
                Spacer()
                Divider()
                Spacer()
        }
            
            VStack {
                Text("Type your Favorite Champ from LOL:")
                SecureField(".e.g., Ashe", text: $userHeroName)
                    .submitLabel(.done)
                Text("Secretly, you are an " + userHeroName + " Main.")
                Spacer()
                Divider()
                Spacer()
            }
            
            VStack {
                
                Text("Type your name here:")
                TextField(".e.g., Kenny", text: $userName)
                    .submitLabel(.done)
                    .frame(width: 100)
                
                Text("Your name is: " + userName)
                    .frame(width:200, height: 50)
                Spacer()
            }
        }
        .padding()
    }
}
struct TextFields_Previews: PreviewProvider {
    static var previews: some View {
        TextAndSecureView()
    }
}
