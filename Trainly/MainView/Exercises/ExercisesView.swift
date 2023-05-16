//
//  ExercisesView.swift
//  Trainly
//
//  Created by szymon on 09/05/2023.
//

import SwiftUI

struct ExercisesView: View {
    @Environment(\.presentationMode) var presentationMode
    @State var exer: CasualTraining
    @State var timerRunning = false
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    @State var countDownTimer: Int = 0
    @State var buttonText = Image(systemName: "arrowtriangle.right.circle")
    
    var body: some View {
        ZStack{
            VStack {
                HStack{
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        Image(systemName: "xmark")
                            .foregroundColor(Color.black)
                            .font(.title2.weight(.bold))
                    }
                    .padding()
                    Spacer()
                    
                }
                    
                Spacer()
                    .frame(width: 20, height: 20)
                
                Text(exer.exercise)
                    .font(.title)
             
                Spacer()
                    .frame(width: 20, height: 20)
                
                Image(exer.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 400, height: 400)
             Spacer()
                    .frame(width: 20, height: 20)
                Text("\(countDownTimer)").onReceive(timer) { _ in
                    if countDownTimer > 0 && timerRunning {
                        countDownTimer -= 1
                    } else {
                        timerRunning = false
                    }
                }
                .font(.largeTitle)
                
                .onAppear(perform: setCountDownTimer)
                
                Spacer()
                
                
                HStack() {
                    
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    
                    Button {
                        if timerRunning == false {
                            timerRunning = true
                            buttonText = Image(systemName: "pause.circle")
                            
                        } else {
                            timerRunning = false
                            buttonText = Image(systemName: "arrowtriangle.right.circle")
                            
                        }
                    } label: {
                        Text(buttonText)
                            .font(.system(size: 80))
                            .foregroundColor(Color.red)
                            
                            
                    }
                    
                    Button {
                        countDownTimer = exer.time
                        timerRunning = false
                        // dopracuj to
                    } label: {
                        Image(systemName: "arrow.counterclockwise")
                            .font(.system(size: 30))
                            .foregroundColor(Color.red)
                    }
                    Spacer()
                    Spacer()
                    Spacer()
                }
                
                Spacer()
                
            }
        }
    }
    
    func setCountDownTimer() {
        countDownTimer = exer.time
    }
}


struct ExercisesView_Previews: PreviewProvider {
    static var previews: some View {
        ExercisesView(exer: Casual[0])
        
       
    }
}
