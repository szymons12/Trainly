//
//  FavIconView.swift
//  Trainly
//
//  Created by szymon on 18/05/2023.
//

import SwiftUI

struct FavIconView: View {
 @State var click: Bool = false
    var body: some View {
        Button {
            self.click = true
        } label: {
            Circle()
                .frame(width: 62, height: 57)
                .foregroundColor(Color.white.opacity(0.5))
                .overlay(
                    Image(systemName: self.click ? "heart.fill" : "heart")
                        .foregroundColor(.black)
                    .font(.title)
                )
        }

        
    }
}

struct FavIconView_Previews: PreviewProvider {
    static var previews: some View {
        FavIconView()
    }
}
