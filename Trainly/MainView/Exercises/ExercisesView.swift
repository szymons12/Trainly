//
//  ExercisesView.swift
//  Trainly
//
//  Created by szymon on 09/05/2023.
//

import SwiftUI

struct ExercisesView: View {
    @Environment(\.presentationMode) var presentationMode
    var exer: CasualTraining
    var countDownTimer = self.exer.time
    var body: some View {
        ZStack{
            VStack {
                HStack{
                    Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }, label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color.black).font(.title2.weight(.bold))
                })
                        .padding()
                    Spacer()
                }
            
            
                
                Text(exer.exercise)
                    .font(.title)
                
                Image(exer.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                
            }
        }
    }
}

struct ExercisesView_Previews: PreviewProvider {
    static var previews: some View {
        ExercisesView(exer: Casual[0])
    }
}
