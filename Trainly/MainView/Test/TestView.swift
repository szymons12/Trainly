


import SwiftUI

struct TestView: View {
    var item: CasualTraining
    var body: some View {

        RoundedRectangle(cornerRadius: 20)
        .frame(width: 115, height: 43)
        .foregroundColor(Color.white.opacity(0.5))
        .foregroundStyle(.secondary)
        .overlay(
            
            
            
            Group{
              
                if item.lvl == 1 {
                    Image("fire")
                        .renderingMode(.template)
                } else if item.lvl == 2 {
                    HStack {
                        Image("fire")
                            .renderingMode(.template)
                        Image("fire")
                            .renderingMode(.template)
                           
                            
                    }
                } else if item.lvl == 3 {
                    HStack {
                        Image("fire")
                            .renderingMode(.template)
                        Image("fire")
                            .renderingMode(.template)
                        Image("fire")
                            .renderingMode(.template)
                    }
                }
                    
            
            }
                
                .foregroundColor(Color.black)
                .font(.title)
        )
        
    }
        
    }





struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView(item: Casual[0])
    }
}
