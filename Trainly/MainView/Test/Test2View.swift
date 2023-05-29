//
//  Test2View.swift
//  Trainly
//
//  Created by szymon on 23/05/2023.
//

import SwiftUI
import FirebaseStorage
import SDWebImageSwiftUI

struct Test2View: View {
   var imageUrl: BellyEx
    var body: some View {
        
    
        WebImage(url: URL(string: imageUrl.images))
            .resizable()
            .indicator(.activity)
            .scaledToFit()
        
        
}
}
struct Test2View_Previews: PreviewProvider {
    static var previews: some View {
        Test2View(imageUrl: Bell[3])
    }
}
