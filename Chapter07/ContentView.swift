//
//  ContentView.swift
//  Chapter07
//
//  Created by Mike Panitz on 4/16/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            TextFields()
                .tabItem {
                    Image(systemName: "1.circle")
                    Text("Class done Text Fields")
                }
            
            PassWord()
                .tabItem {
                    Image(systemName: "2.circle")
                    Text("Log in Page")
                }
            
            TextEditorDemo()
                .tabItem {
                    Image(systemName: "3.circle")
                    Text("Text editor")
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
