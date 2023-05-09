//
//  Background.swift
//  Trainly
//
//  Created by szymon on 30/04/2023.
//

import SwiftUI

struct ShopIcon: View {
    @State var showSheet: Bool = false
    var body: some View {
             
                Button(action: {
                    showSheet.toggle()
               }, label: {
                   
                   Image(systemName: "cart.fill")
                       .foregroundColor(Color.white)
                       .font(.largeTitle)
                       .frame(width: 150, height: 150)
                       .background(Color.red)
                       .cornerRadius(20)
                       
                       
                })
                    .fullScreenCover(isPresented: $showSheet, content: {
                        ShopView()
                    })
        }
    }


struct ShopIcon_Previews: PreviewProvider {
    static var previews: some View {
        ShopIcon()
    }
}

