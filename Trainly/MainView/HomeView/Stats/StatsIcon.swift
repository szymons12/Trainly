//
//  StatsIcon.swift
//  Trainly
//
//  Created by szymon on 01/05/2023.
//

import SwiftUI

struct StatsIcon: View {
    @State var showSheet: Bool = false
    var body: some View {
         Button(action: {
            showSheet.toggle()
       }, label: {
           
           RoundedRectangle(cornerRadius: 20)
               .foregroundColor(Color("white"))
               .font(.system(size: 46))
               .frame(width: 150, height: 150)
               
               .overlay(
                
                VStack {
                    HStack(alignment: .bottom){
                  RoundedRectangle(cornerRadius: 20)
                                .frame(width: 28, height: 64)
                                .foregroundColor(Color("Color-1"))
                            
                  RoundedRectangle(cornerRadius: 20)
                                .frame(width: 28, height: 84)
                                .foregroundColor(Color("Back"))
                        
                  RoundedRectangle(cornerRadius: 20)
                            .frame(width: 28, height: 104)
                            .foregroundColor(Color("Color-2"))
                        
                
                    }
                    Text("Stats")
                        .font(.title3)
                        .bold()
                        .foregroundColor(Color("Color"))
                }
               )
               
               
        })
            .fullScreenCover(isPresented: $showSheet, content: {
                ExercisesView(exer: Casual[0])
            })

    }
}

struct StatsIcon_Previews: PreviewProvider {
    static var previews: some View {
        StatsIcon()
    }
}
