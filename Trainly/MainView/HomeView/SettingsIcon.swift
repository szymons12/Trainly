//
//  SettingsIcon.swift
//  Trainly
//
//  Created by szymon on 05/05/2023.
//

import SwiftUI

struct SettingsIcon: View {
    @State var showSheet: Bool = false
    var body: some View {
         Button(action: {
            showSheet.toggle()
       }, label: {
           
           Image(systemName: "gear")
               .foregroundColor(Color.red)
               .font(.largeTitle)
            
               
               
        })
            .fullScreenCover(isPresented: $showSheet, content: {
                TestView()
            })

    }
}

struct SettingsIcon_Previews: PreviewProvider {
    static var previews: some View {
        SettingsIcon()
    }
}
