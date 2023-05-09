//
//  Block.swift
//  Trainly
//
//  Created by szymon on 04/05/2023.
//

import SwiftUI

struct Block: View {
    @State var Animated: Bool = true
    @State var Index = 0
    var body: some View {
        ZStack{
            
            TabView(selection: $Index){
                ForEach(0..<8){index in
                    Rectangle()
                        .frame(width: 100, height: 100)
                }
        }
            .animation(.easeIn)
            
            Button(action: {
                if Index == 7 {
                    Index = 0
            }
                else{
                    Index = Index + 1
                }
            }, label: {
                Text("Click")
            })
            
            
    }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
    }
struct Block_Previews: PreviewProvider {
    static var previews: some View {
        Block()
    }
}
}
