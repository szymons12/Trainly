//
//  ShopView.swift
//  Trainly
//
//  Created by szymon on 09/05/2023.
//

import SwiftUI

struct ShopView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack{
            VStack{
                HStack{
                    Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }, label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color.black).font(.title2.weight(.bold))
                })
            }
        }
    }
}

struct ShopView_Previews: PreviewProvider {
    static var previews: some View {
        ShopView()
    }
}
}
