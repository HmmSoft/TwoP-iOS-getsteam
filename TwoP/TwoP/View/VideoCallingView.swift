
import SwiftUI

struct VideoCallingView: View {
    
    var body: some View {
        
        VStack{
            Text("User A")
                .bold()
                .font(.system(size: 30))
                .frame(width: 100, height: 100, alignment: .bottom)
                .padding(.top, 600)
        }
    }
}

struct VideoCallingView_Previews: PreviewProvider {
    static var previews: some View {
        VideoCallingView()
    }
}
