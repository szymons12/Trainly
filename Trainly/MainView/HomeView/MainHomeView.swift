//
//  MainHomeView.swift
//  Trainly
//
//  Created by szymon on 19/05/2023.
//

import SwiftUI

struct MainHomeView: View {
    var body: some View {
        ZStack{
        Background()
            VStack{
                HStack(spacing: 90){
                    Text("Trainly")
                        .bold()
                        .font(.system(size: 45))
                    YourCoinView()
                }
                CentrumView()
                Spacer().frame(height:30)
                HStack(spacing: 50){
                    ShopIcon()

                    StatsIcon()
                    
                }
                
                Spacer().frame(height: 120)
            }
        }

    }
}

struct MainHomeView_Previews: PreviewProvider {
    static var previews: some View {
        MainHomeView()
    }
}
