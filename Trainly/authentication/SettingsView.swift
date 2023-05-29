//
//  SettingsView.swift
//  Trainly
//
//  Created by szymon on 25/05/2023.
//

import SwiftUI
 
@MainActor
final class SettingsViewModel: ObservableObject {

func signOut() throws {
             try AuthenticationManager.shared.signOut()
}
}
struct SettingsView: View {
        @StateObject private var viewModel = SettingsViewModel()
        @Binding var showSignInView: Bool
        
    var body: some View {
        List {
            Button("log out "){
                Task{
                    do {
                        try viewModel.signOut()
                        showSignInView = true
                    } catch{
                        print(error)
                    }
                }
            }
            
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            SettingsView(showSignInView: .constant(false))
        }
    }
}

