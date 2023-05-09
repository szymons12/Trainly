//
//  TrainLvl.swift
//  Trainly
//
//  Created by szymon on 04/05/2023.
//

import SwiftUI

struct TrainLvl: View {
    @State var show1 = false
    @State var show2 = false
    @State var show3 = false
    var body: some View {
        HStack{
            Button {
                self.show1 = true
                self.show2 = false
                self.show3 = false
            } label: {
                Text("Spokojny")
                .font(.subheadline)
                .foregroundColor(Color.red)
                .padding()
                .background(Color.white)
                .cornerRadius(25)
            }
            
            Button {
                self.show1 = false
                self.show2 = true
                self.show3 = false
            } label: {
                Text("umiarkowany")
                .font(.subheadline)
                .foregroundColor(Color.red)
                .padding()
                .background(Color.white)
                .cornerRadius(25)
            }
            
            Button {
                self.show1 = false
                self.show2 = false
                self.show3 = true
            } label: {
                Text("Intensywny")
                .font(.subheadline)
                .foregroundColor(Color.red)
                .padding()
                .background(Color.white)
                .cornerRadius(25)
            }

            
            
        }
    }
}

struct TrainLvl_Previews: PreviewProvider {
    static var previews: some View {
        TrainLvl()
    }
}
