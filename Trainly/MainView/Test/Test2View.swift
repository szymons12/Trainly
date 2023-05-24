//
//  Test2View.swift
//  Trainly
//
//  Created by szymon on 23/05/2023.
//

import SwiftUI

struct Test2View: View {
    var body: some View {
        ZStack{
            Color("Back").ignoresSafeArea()
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 200, height: 200)
                .background(Color.white)
                .opacity(0.2)
                

                                 }
    }
}

struct Test2View_Previews: PreviewProvider {
    static var previews: some View {
        Test2View()
    }
}
