//
//  ExerView.swift
//  Trainly
//
//  Created by szymon on 05/06/2023.
//

import SwiftUI

struct ExerView: View {
   @State var exe: ShopEx
    var body: some View {
        ZStack{
            ExeBackView()
            HStack{
                
                
                ZStack {
                    Image(exe.image)
                        .resizable()
                    .frame(width: 205, height: 214)
                }
                
                VStack{
                    
                VStack(){
                    Text(exe.exercise)
                        .font(.custom("Raleway", size: 38))
                        
                    
                    Text("\(exe.time)s")
                        .font(.title)
                    
                }
                
                    VStack(alignment: .trailing){
                RoundedRectangle(cornerRadius: 20)
                        .frame(width: 110, height: 43)
                        .foregroundColor(Color.white)
                        .overlay(
                            Group{
                        
                                if exe.lvl == 1 {
                                    Image("fire")
                                        .renderingMode(.template)
                                } else if exe.lvl == 2 {
                                    HStack {
                                        Image("fire")
                                            .renderingMode(.template)
                                        Image("fire")
                                            .renderingMode(.template)
                                           
                                            
                                    }
                                } else if exe.lvl == 3 {
                                    HStack {
                                        Image("fire")
                                            .renderingMode(.template)
                                        Image("fire")
                                            .renderingMode(.template)
                                        Image("fire")
                                            .renderingMode(.template)
                                    }
                                }
                                    
                            
                            })
                    
                RoundedRectangle(cornerRadius: 20)
                            .frame(width: 90, height: 43)
                            .foregroundColor(Color.white)
                            .overlay(
                                HStack(spacing: 0){

                                Text("\(exe.point)")
                                        .font(.title2)
                                    Image("fire")
                                        .renderingMode(.template)
                                })
                    }
                    
            
                } // VStack
           
            } // HStack
            
            VStack{
                Spacer()
                        .frame(height: 180)
                
                RoundedRectangle(cornerRadius: 20)
                            .frame(width: 98, height: 43)
                            .foregroundColor(Color.white)
                            .overlay(
                                HStack(spacing: 0){

                                Text("\(exe.cost)")
                                        .font(.title2)
                                        .bold()
                                    Image("fire")
                                    .renderingMode(.template)
                                
                                })
                
                
            }
           
        } // ZStack
        
    }
}

struct ExerView_Previews: PreviewProvider {
    static var previews: some View {
        ExerView(exe: Shop[0])
    }
}
