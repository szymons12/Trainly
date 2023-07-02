//
//  TaskBar.swift
//  Trainly
//
//  Created by szymon on 23/04/2023.
//

import SwiftUI

struct TaskBar: View {
    @State var selectIndex = 1 //
    @State var isAnimated: Bool = false
    
    let icons = ["person.2.fill", "house", "list.bullet.rectangle.portrait"]

    var body: some View {
        ZStack{
            
            Background()
            
            switch selectIndex{
            case 0:
                ExercisesView(exer: Bell[0], str: Casual[0])
            case 1:
                MainHomeView()
            case 2:
                Text("szyszka")
            default:
                Text("Chlebak")
            }
            
            VStack{
                Spacer().frame(height:680)
                HStack(spacing: 100){
                    ForEach(0..<3, id: \.self){
                        number in
                        Button(action: {
                            withAnimation(.default){
                                isAnimated.toggle()
                            }
                            self.selectIndex = number
                        }, label: {
                            Image(systemName: icons[number])
                                .foregroundColor(self.selectIndex == number ? Color("Back") : Color("Color"))
                               })
                    }
                } // HStack
                
                .padding()
                .font(.title)
                .foregroundColor(Color("Color"))
                .background(Color("Color-1"))
                .cornerRadius(20)
                
                }
            }
        }
    
}

struct TaskBar_Previews: PreviewProvider {
    static var previews: some View {
        TaskBar()
    }
}
