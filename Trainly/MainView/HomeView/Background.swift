//
//  Background.swift
//  Trainly
//
//  Created by szymon on 01/05/2023.
//

import SwiftUI

struct Background: View {
    var body: some View {
        ZStack{
            VStack{
                HStack(spacing: 280){
              
                    SettingsIcon()
                  
                    Image(systemName: "flame")
                        .foregroundColor(Color.red)
                        .font(.title)
                }
                Spacer()
                CentrumView()
                Spacer()
                HStack{
                    Spacer()
                    ShopIcon()
                    Spacer()
                    StatsIcon()
                    Spacer()
                }
                Spacer()
                Spacer()
            }
        }
    }
}

struct Background_Previews: PreviewProvider {
    static var previews: some View {
        Background()
    }
}
