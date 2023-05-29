//
//  SignEmailView.swift
//  Trainly
//
//  Created by szymon on 25/05/2023.
//

import SwiftUI

@MainActor
final class SignInEmailViewModel: ObservableObject{
     @Published var email = ""
     @Published var password = ""
    
    func signIn() {
        guard !email.isEmpty, !password.isEmpty else {
            print("No email or password")
            return
              
        }
        
        Task{
            do {
let returnedUserData = try await AuthenticationManager.shared.createUser(email: email, password: password)
                print("succes")
                print(returnedUserData)
            } catch {
                print("error: \(error)")
            }
        }
    }
}

struct SignEmailView: View {
    
    @StateObject private var viewModel = SignInEmailViewModel()
    
    var body: some View {
        VStack{
            TextField("Email...", text: $viewModel.email)
                .padding()
                .background(Color.gray.opacity(0.4))
            
           SecureField("password...", text: $viewModel.password)
                .padding()
                .background(Color.gray.opacity(0.4))
            
            Button(action: {
                viewModel.signIn()
            }, label: {
                Text("SignIn")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
            })
        }
        
      
        .padding()
    }
}

struct SignEmailView_Previews: PreviewProvider {
    static var previews: some View {
        SignEmailView()
        
    }
}

