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
            TextAndSecureView()
                .tabItem {
                    Image(systemName: "1.circle")
                    Text("Basic TextFields")
                }
            
            AdvancedTextFieldView()
                .tabItem {
                    Image(systemName: "2.circle")
                    Text("Advanced TextFields")
                }
            
            TextEditorDemo()
                .tabItem {
                    Image(systemName: "3.circle")
                    Text("View 3")
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
