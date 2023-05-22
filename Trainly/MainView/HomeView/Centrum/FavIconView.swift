//
//  FavIconView.swift
//  Trainly
//
//  Created by szymon on 18/05/2023.
//

import SwiftUI

struct FavIconView: View {
    var body: some View {
        Circle()
            .frame(width: 62, height: 57)
            .foregroundColor(Color.white.opacity(0.5))
            .overlay(
            Image(systemName: "heart")
                .foregroundColor(Color.black)
                .font(.title)
            )
    }
}

struct FavIconView_Previews: PreviewProvider {
    static var previews: some View {
        FavIconView()
    }
}
