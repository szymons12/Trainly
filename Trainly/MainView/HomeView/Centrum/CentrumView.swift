//
//  CentrumView.swift
//  Trainly
//
//  Created by szymon on 04/05/2023.
//

import SwiftUI

struct CentrumView: View {
    @State var show1 = true
    @State var show2 = false
    @State var show3 = false
    var body: some View {
        ZStack{
        Rectangle()
            .frame(maxWidth: .infinity , maxHeight: 390)
            .foregroundColor(Color.red)
            VStack{
                Text("Centrum Treningowe")
                    .foregroundColor(Color.white)
                    .font(.title)
                
                
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
                
                if show1 {
                    SlideView()
                        .frame(maxWidth: .infinity, maxHeight: 280)
                }
                
                if show2 {
                    SlideView()
                        .frame(maxWidth: .infinity, maxHeight: 280)
                }
                
                if show3 {
                    SlideView()
                        .frame(maxWidth: .infinity, maxHeight: 280)
                }
                    
                    
                    
                
            }
        }
    }
}

struct CentrumView_Previews: PreviewProvider {
    static var previews: some View {
        CentrumView()
    }
}
