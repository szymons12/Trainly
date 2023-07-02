//
//  BanerView.swift
//  Trainly
//
//  Created by szymon on 28/06/2023.
//

import SwiftUI

struct BanerView: View {
    var body: some View {
        Rectangle()
            .frame(maxWidth: .infinity, idealHeight: 95, maxHeight: 95)
            .foregroundColor(Color("Back"))
            .overlay(
            Text("Create your own training")
                .font(.custom("Raleway-Bold", size: 24))
                .foregroundColor(Color("Color"))
            , alignment: .bottomLeading)
        
    }
}

struct BanerView_Previews: PreviewProvider {
    static var previews: some View {
        BanerView()
    }
}
