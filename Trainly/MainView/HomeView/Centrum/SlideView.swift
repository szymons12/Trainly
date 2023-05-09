//
//  SlideView.swift
//  Trainly
//
//  Created by szymon on 05/05/2023.
//

import SwiftUI

struct SlideView: View {
    var body: some View {
        
        TabView{
            ForEach(Casual[0...4]) { item in
                Image(item.image)
                    .resizable()
                .scaledToFit()
                .overlay(
                    Text(item.exercise)
                        .foregroundColor(Color.white)
                        .font(.largeTitle)
                )
            } // loop
        } // tabview
        .tabViewStyle(PageTabViewStyle())
    }
}

struct SlideView_Previews: PreviewProvider {
    static var previews: some View {
        SlideView()
    }
}
