import SwiftUI

struct TextView: View {
    @State private var textFieldInput = ""
    @State private var secureFieldInput = ""
    @State private var textEditorInput = ""
    
    var body: some View {
        VStack {
            // TextField
            TextField("Enter text", text: $textFieldInput)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .disableAutocorrection(true)
                .padding()
            
            // Text view showing TextField input
            Text(textFieldInput)
                .padding()
            
            // SecureField
            SecureField("Enter password", text: $secureFieldInput)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            // Text view showing SecureField input
            Text(secureFieldInput)
                .padding()
            
            // TextEditor
            TextEditor(text: $textEditorInput)
                .frame(height: 100)
                .border(Color.gray)
                .padding()
        }
        .onTapGesture {
            // Dismiss virtual keyboard
            UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
        }
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}
