//
//  ExercisesView.swift
//  Trainly
//
//  Created by szymon on 09/05/2023.
//

import SwiftUI

struct ExercisesView: View {
    @Environment(\.presentationMode) var presentationMode
    @State var exer: BellyEx
    @State var str: CasualTraining
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
                    
                    Text(str.exercise)
                        .font(.custom("Raleway-Medium", size: 45))
                        .foregroundColor(Color("Color"))
                    Spacer().frame(width: 140)
                } //  Exit Button
                
                    
              
                
                Text(exer.exercise)
                    .font(.title)
                    .foregroundColor(Color("Color-1"))
             
                Spacer()
                    .frame(width: 20, height: 20)
                
                Image(exer.images)
                    .resizable()
                    .frame(width: 350, height: 346)
                    .cornerRadius(20)
                    .shadow(color: Color("Color-3"), radius: 10, x: 10, y:10)
             Spacer()
                    .frame(width: 20, height: 20)
                
                
                
                
                       
                    
                    
                    
                
                    
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(Color("Color-1"))
                        .opacity(0.2)
                        .shadow(color: Color("Color-1"), radius: 10, x: 1, y: 1)
                    .frame(width: 150, height: 80)
                        .overlay(
                Text("\(countDownTimer)").onReceive(timer) { _ in
                    if countDownTimer > 0 && timerRunning {
                        countDownTimer -= 1
                    } else {
                        timerRunning = false
                    }
                }
                .font(.system(size: 48))
                
                .onAppear(perform: setCountDownTimer)
                
                )// overlay
                
                HStack() {
                    
                    Spacer().frame(width: 90)
                    Button {
                        if timerRunning == false {
                            timerRunning = true
                            buttonText = Image(systemName: "pause.circle")
                            
                        }
                        
                        else if countDownTimer == 0 {
                            buttonText = Image(systemName: "chevron.forward")
                                
                        }
                        else {
                            timerRunning = false
                            buttonText = Image(systemName: "arrowtriangle.right.circle")
                            
                        }
                    } label: {
                        Text(buttonText)
                            .font(.system(size: 140))
                            .foregroundColor(Color("Color"))
                            
                            
                    }
                   
                    
                    Button {
                        countDownTimer = exer.time
                        timerRunning = false
                        // dopracuj to
                    } label: {
                        Circle()
                            .frame(width: 80, height: 80)
                            .foregroundColor(Color("Color"))
                            .overlay(
                        Image(systemName: "arrow.counterclockwise")
                            .font(.system(size: 35))
                            .foregroundColor(Color.white)
                        )
                    }
                   
                
                
                }
              
                
                
                
            }
        }
    }
    
    func setCountDownTimer() {
        countDownTimer = exer.time
    }
}


struct ExercisesView_Previews: PreviewProvider {
    static var previews: some View {
        ExercisesView(exer: Bell[0], str: Casual[0])
        
       
    }
}
