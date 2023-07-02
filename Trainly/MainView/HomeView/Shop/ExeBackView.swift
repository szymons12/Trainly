//
//  ExeBackView.swift
//  Trainly
//
//  Created by szymon on 06/06/2023.
//

import SwiftUI

struct ExeBackView: View {
    var body: some View {
        
        RoundedRectangle(cornerRadius: 20)
            .frame(width: 348, height: 248)
            .foregroundColor(Color("Color-1").opacity(0.3))
            .shadow(color: Color("Color-3"), radius: 10, x: 10, y:10)
            .overlay(
                HStack(){
                            Image(systemName: "flame")

                                .resizable()
                                .foregroundColor(Color("Color").opacity(0.1))
                                .frame(width: 200, height: 240)
                    
                    Spacer().frame(width: 140)
                })
                
        
}
}
struct ExeBackView_Previews: PreviewProvider {
    static var previews: some View {
        ExeBackView()
    }
}
