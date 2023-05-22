//
//  CoinNumber.swift
//  Trainly
//
//  Created by szymon on 18/05/2023.
//

import SwiftUI

struct CoinNumber: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .frame(width: 85, height: 43)
            .foregroundColor(Color.white.opacity(0.5))
            .overlay(
                            HStack {
                                Text("300")
                                    .bold()
                                    .font(.title2)
                                Spacer()
                                    .frame(width: 5, height: 10)
                                Image(systemName: "flame")
                                    .font(.title)
                            }
                            .foregroundColor(Color.white)
                        )
    }
}

struct CoinNumber_Previews: PreviewProvider {
    static var previews: some View {
        CoinNumber()
    }
}
