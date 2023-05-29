//
//  AuthenticationView.swift
//  Trainly
//
//  Created by szymon on 25/05/2023.
//

import SwiftUI

struct AuthenticationView: View {
    var body: some View {
        VStack{
            NavigationLink {
              SignEmailView()
                    .foregroundColor(.red)
            } label: {
            Text("sign with email")
                    .foregroundColor(.blue)
            
        }
    }
}

struct AuthenticationView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
        AuthenticationView()
        }
    }
}
}
