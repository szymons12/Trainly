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
                  
                   RoundedRectangle(cornerRadius: 20)
                       .foregroundColor(Color("Color"))
                       .font(.system(size: 46))
                       .frame(width: 150, height: 150)
                       .overlay(
                        VStack{
                       Image(systemName: "bag")
                                .font(.system(size: 72))
                            
                                
                       Text("Shop")
                                .font(.title3)
                                .bold()
                        }
                            .foregroundColor(Color("Back"))
                       )
                      
                    
                     
                   
                       
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

