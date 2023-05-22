//
//  PointsNumView.swift
//  Trainly
//
//  Created by szymon on 18/05/2023.
//

import SwiftUI

struct PointsNumView: View {
    var body: some View {
       RoundedRectangle(cornerRadius: 25)
            .frame(width: 115, height: 43)
            .foregroundColor(Color.white.opacity(0.5))
            .overlay(
                HStack{
                    Image(systemName: "flame")
                    Image(systemName: "flame")
                    Image(systemName: "flame")
                }
                    .foregroundColor(Color.white)
                    .font(.title)
            )
    }
}

struct PointsNumView_Previews: PreviewProvider {
    static var previews: some View {
        PointsNumView()
    }
}
