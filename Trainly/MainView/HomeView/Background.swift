//
//  Background.swift
//  Trainly
//
//  Created by szymon on 01/05/2023.
//

import SwiftUI

struct Background: View {
    var body: some View {
        VStack(spacing: 0){
            
            Rectangle()
                .frame(width: 390, height: 700)

                .foregroundColor(Color("Back"))
            
               
               
            
            
            Rectangle()
                .frame(width: 390, height: 492)
                .foregroundColor(Color("Color-3"))
            
        }
        }
    }


struct Background_Previews: PreviewProvider {
    static var previews: some View {
        Background()
    }
}

