


import SwiftUI

struct TestView: View {
    var item: CasualTraining
    var body: some View {
      
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center) {
                Spacer()
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 200, height: 200)
                Spacer()
            }
            .padding(.horizontal)
        }
        
    }
        
    }





struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView(item: Casual[0])
    }
}
