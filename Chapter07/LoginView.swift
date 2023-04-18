import SwiftUI

struct LoginView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var message = ""
    
    var body: some View {
        VStack {
            TextField("Username or Email", text: $username)
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(10.0)
                .disableAutocorrection(true)
            
            SecureField("Password", text: $password)
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(10.0)
                .disableAutocorrection(true)
            
            Button(action: {
                if self.username == "AwesomeBob" && self.password == "AwesomePassword" {
                    self.message = "Login successful"
                } else {
                    self.message = "Invalid login"
                }
            }) {
                Text("Log in")
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(10.0)
            }
            .padding()
            
            Button(action: {}) {
                Text("Forgot password?")
            }
            
            Button(action: {}) {
                Text("Create new account")
            }
            
            Text(message)
                .foregroundColor(message == "Invalid login" ? .red : .green)
                .padding()
        }
        .padding()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

