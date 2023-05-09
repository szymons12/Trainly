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
            Color.clear.ignoresSafeArea()
            
            switch selectIndex{
            case 0:
                Background()
            case 1:
                Background()
            case 2:
                Text("szyszka")
            default:
                Text("Chlebak")
            }
            
            VStack{
                Spacer()
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
                                .foregroundColor(self.selectIndex == number ? Color.red : Color.black)
                               })
                    }
                } // HStack
                
                .padding()
                .font(.title)
                .foregroundColor(.black)
                
                }
            }
        }
    
}

struct TaskBar_Previews: PreviewProvider {
    static var previews: some View {
        TaskBar()
    }
}
