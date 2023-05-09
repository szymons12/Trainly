//
//  TestView.swift
//  Trainly
//
//  Created by szymon on 30/04/2023.
//

import SwiftUI

struct TestView: View {
    @State private var isShowingFirstView = false
        @State private var isShowingSecondView = false
    var body: some View {
        ZStack{
            HStack{
                Button("Pokaż napis 1") {
                                self.isShowingFirstView = true
                            }
                            
                            Button("Pokaż napis 2") {
                                self.isShowingSecondView = true
                            }
            }
            
            VStack{
                if isShowingFirstView {
                    SlideView()
                }
                
                if isShowingSecondView{
                    SettingsIcon()
                }
            }
        }
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
