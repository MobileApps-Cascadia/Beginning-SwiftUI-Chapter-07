//
//  Settings.swift
//  Chapter07
//
//  Created by Student Account on 4/18/23.
//

import SwiftUI

struct Settings: View {
    @AppStorage("appTheme") private var appTheme = AppTheme.light
    @State private var themeName = ""
    @State private var license = ""
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Appearance")) {
                    Toggle(isOn: Binding(
                        get: { appTheme == .dark },
                        set: { appTheme = $0 ? .dark : .light }
                    )) {
                        Text("Dark Mode")
                    }
                    VStack{
                        Text("Theme Name")
                        TextField("", text: $themeName)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                }
                Section(header: Text("Features")){
                    Toggle(isOn: .constant(false)) {
                        Text("Word Wrap")
                    }
                    VStack{
                        Text("Activate Professional Features")
                        SecureField("License Key", text: $license)
                                       .textFieldStyle(RoundedBorderTextFieldStyle())
                                       .padding()
                    }
                }
            }
            .navigationTitle("Settings")
        }
        .preferredColorScheme(appTheme.colorScheme)
    }
}

enum AppTheme: Int, CaseIterable, Identifiable {
    case light, dark
    
    var id: Int { rawValue }
    
    var colorScheme: ColorScheme {
        switch self {
        case .light: return .light
        case .dark: return .dark
        }
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}
