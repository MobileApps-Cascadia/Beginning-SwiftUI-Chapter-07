import SwiftUI
import UIKit

struct SettingsView: View {
    @State private var themeName = ""
    @State private var wordWrapEnabled = false
    @State private var licenseKey = ""
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        Form {
            Section(header:  Text("Current Mode: \(colorScheme == .dark ? "Dark" : "Light")")) {
                Toggle("Switch to \(colorScheme == .dark ? "Light" : "Dark") Mode", isOn: Binding(
                    get: { colorScheme == .dark },
                    set: { isOn in
                        if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
                            windowScene.windows.first?.overrideUserInterfaceStyle = isOn ? .dark : .light
                        }
                    }
                ))
            }
                       
            Section(header: Text("Features")) {
                Toggle(isOn: $wordWrapEnabled) {
                    Text("Word Wrap")
                }
                TextField("License Key", text: $licenseKey)
            }
        }
        .navigationBarTitle(Text("Settings"))
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
