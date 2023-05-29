//
//  CentrumView.swift
//  Trainly
//
//  Created by szymon on 04/05/2023.
//

import SwiftUI

struct CentrumView: View {
    @State var show1 = true
    @State var show2 = false
    @State var show3 = false
    @State var show4 = false
    var body: some View {
 
    
                VStack(){
                    ScrollView(.horizontal)
                       {
                    HStack{
                     
                        Button {
                            self.show1 = true
                            self.show2 = false
                            self.show3 = false
                            self.show4 = false
                        } label: {
                            Image( "fire")
                                .renderingMode(.template)
                                .foregroundColor(Color("Color"))
                                .font(.title)
                            .frame(width: 80, height: 45)
                            .background(Color.white)
                            .cornerRadius(20)
                            
                        }
                        
                        Button {
                            self.show1 = false
                            self.show2 = true
                            self.show3 = false
                            self.show4 = false
                        } label: {
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 80, height: 45)
                                .foregroundColor(Color("Color-1"))
                                .overlay(
                                    HStack{
                                        Image( "fire")
                                            .renderingMode(.template)

                                        Image( "fire")
                                            .renderingMode(.template)

                                    }
                                    
                                        .foregroundColor(Color("Color"))
                                        .font(.title)
                                )
                        }
                        
                        Button {
                            self.show1 = false
                            self.show2 = false
                            self.show3 = true
                            self.show4 = false
                        } label: {
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 110, height: 45)
                                .foregroundColor(Color("Color-2"))
                                .overlay(
                                    HStack{
                                        Image( "fire")
                                            .renderingMode(.template)

                                        Image( "fire")
                                            .renderingMode(.template)

                                        Image( "fire")
                                            .renderingMode(.template)

                                    }
                                        .foregroundColor(Color("Color"))
                                        .font(.title)
                                )
                        }
                        
                        Button {
                            self.show1 = false
                            self.show2 = false
                            self.show3 = false
                            self.show4 = true
                        } label: {
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 50, height: 45)
                                .foregroundColor(Color.white)
                                .overlay(
                                    Image(systemName: "heart.fill")
                                        .foregroundColor(Color.red)
                                        .font(.title)
                                )
                        }
                        
                        } // scrollView
                    } // HStack
                    
                    if show1 {
                        SlideView()
                            .frame(width: 350, height: 346)
                            
                    }
                    
                    if show2 {
                        SlideView()
                            .frame(width: 350, height: 346)
                    }
                    
                    if show3 {
                        SlideView()
                            .frame(width: 350, height: 346)
                    }
                    
                    if show4 {
                        SlideView()
                            .frame(width: 350, height: 346)
                    }
                        
                        
                   
                    
                
            }
        }
    }


struct CentrumView_Previews: PreviewProvider {
    static var previews: some View {
        CentrumView()
    }
}
