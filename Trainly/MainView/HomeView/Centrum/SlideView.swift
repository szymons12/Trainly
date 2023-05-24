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
                    .scaledToFill()
                    .frame(width: 350, height: 346)
                    .cornerRadius(25)
       
                .overlay(
                    
                    VStack{
                        Spacer()
                            .frame(width: 20, height: 10)
                        
                        HStack(spacing: 100){
                            Text(item.exercise)
                                .font(.system(size: 45))
                                .bold()
                                .foregroundColor(Color.white)
                                
                            
                            Text("\(item.time)min")
                                .font(.system(size: 45))
                                .bold()
                                .foregroundColor(Color.white)
                        }
                        .lineLimit(nil)
                        
                        VStack{
                            Spacer().frame(height: 5)
                       
                            HStack{
                                    Spacer()
                                        .frame(width: 225)
                                
                                RoundedRectangle(cornerRadius: 20)
                                .frame(width: 115, height: 43)
                                .foregroundColor(Color.white.opacity(0.5))
                                .foregroundStyle(.secondary)
                                .overlay(
                                    Group{
                                
                                        if item.lvl == 1 {
                                            Image("fire")
                                                .renderingMode(.template)
                                        } else if item.lvl == 2 {
                                            HStack {
                                                Image("fire")
                                                    .renderingMode(.template)
                                                Image("fire")
                                                    .renderingMode(.template)
                                                   
                                                    
                                            }
                                        } else if item.lvl == 3 {
                                            HStack {
                                                Image("fire")
                                                    .renderingMode(.template)
                                                Image("fire")
                                                    .renderingMode(.template)
                                                Image("fire")
                                                    .renderingMode(.template)
                                            }
                                        }
                                            
                                    
                                    }
                                        
                                        .foregroundColor(Color.black)
                                        .font(.title)
                                )
                              
                                 
                                
                                    
                            }
                        
                            HStack{
                                Spacer()
                                        .frame(width: 250)
                                CoinNumber()
                        }
                            
                            VStack{
                                Spacer().frame(height:110)
                            HStack{
                                Spacer().frame(width:265)
                                FavIconView()
                                
                            }
                            }
                        }
                            Spacer()

                    
                        
                    }
                ) // overlay
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
