
import SwiftUI

struct ConnectView: View {
    var body: some View {
        NavigationLink(destination: {
            VideoCallingView()
        }, label: {
            CustomButtonView(title: "Connect me", fontSize: 32, fgColor: "DarkGray", bgColor: "Orange", width: 380, height: 60, radius: 10)
        })
        .offset(y:50)
        .navigationBarBackButtonHidden(false)
        
        
        
    }
    func isSignInSuccessful(){
        
    }
}



struct ConnectScreen_Previews: PreviewProvider {
    static var previews: some View {
        ConnectView()
    }
}

