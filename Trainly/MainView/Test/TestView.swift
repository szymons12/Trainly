//
//  TestView.swift
//  Trainly
//
//  Created by szymon on 30/04/2023.
//

import SwiftUI

struct TestView: View {
    var body: some View {
        ZStack{
            Color.black.ignoresSafeArea()
            
            CentrumView()
        }
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
