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
                        
                        VStack{
                            Spacer().frame(height: 5)
                       
                            HStack{
                                    Spacer()
                                        .frame(width: 225)
                                        PointsNumView()
                                    
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
