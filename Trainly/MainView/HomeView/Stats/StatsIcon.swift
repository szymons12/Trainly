//
//  StatsIcon.swift
//  Trainly
//
//  Created by szymon on 01/05/2023.
//

import SwiftUI

struct StatsIcon: View {
    @State var showSheet: Bool = false
    var body: some View {
         Button(action: {
            showSheet.toggle()
       }, label: {
           
           Image(systemName: "chart.xyaxis.line")
               .foregroundColor(Color.white)
               .font(.largeTitle)
               .frame(width: 150, height: 150)
               .background(Color.red)
               .cornerRadius(20)
               
               
        })
            .fullScreenCover(isPresented: $showSheet, content: {
                TestView()
            })

    }
}

struct StatsIcon_Previews: PreviewProvider {
    static var previews: some View {
        StatsIcon()
    }
}
