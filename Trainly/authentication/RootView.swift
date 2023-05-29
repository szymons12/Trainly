//
//  RootView.swift
//  Trainly
//
//  Created by szymon on 25/05/2023.
//

import SwiftUI

struct RootView: View {
    
    @State private var showSignInView: Bool = false
    
    var body: some View {
        ZStack{
            NavigationView{
                SettingsView(showSignInView: $showSignInView )
              
            } 
        }
        .onAppear{
            let authUser = try?
            AuthenticationManager.shared.getAuthenticatedUser()
            self.showSignInView = authUser == nil 
        }
        .fullScreenCover(isPresented: $showSignInView){
            NavigationView{
             AuthenticationView()
            }
        }
        
        }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
