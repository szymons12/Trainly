//
//  YourCoinView.swift
//  Trainly
//
//  Created by szymon on 19/05/2023.
//

import SwiftUI

struct YourCoinView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .frame(width: 110, height: 45)
            .foregroundColor(Color.white)
            .overlay(
                HStack{
                    Text("300")
                      
                    Image(systemName: "flame") // do dopracowania
                }
                    .font(.title)
                    .foregroundColor(Color("Color"))
            )
    }
}

struct YourCoinView_Previews: PreviewProvider {
    static var previews: some View {
        YourCoinView()
    }
}
