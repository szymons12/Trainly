//
//  Tescik.swift
//  Trainly
//
//  Created by szymon on 04/05/2023.
//

import SwiftUI

struct Tescik: View {
//    var exe: CasualTraining
    var body: some View {
//        VStack{
//        Text(exe.exercise)
//
//            Image(exe.image)
//                .resizable()
//                .scaledToFit()
//                .frame(width: 250, height: 250)
//
//            Text("\(exe.time)")
//
//
//        }
        
        
//        TabView{
//            ForEach(0 ..< 5) { item in
//                Image("plank")
//                    .resizable()
//                .scaledToFit()
//            } // loop
//        } // tabview
//        .tabViewStyle(PageTabViewStyle())
        
        TabView{
            Background()
                .tabItem{
                    Image(systemName: "square.grid.2x2")
                }
            ContentView()
                .tabItem{
                    Image(systemName: "play.rectangle")
                }
            ContentView()
                .tabItem{
                    Image(systemName: "map")
                }
            ContentView()
                .tabItem{
                    Image(systemName: "photo")
                }
        }
        
        
    }
}

struct Tescik_Previews: PreviewProvider {
    static var previews: some View {
        Tescik()
    }
}
