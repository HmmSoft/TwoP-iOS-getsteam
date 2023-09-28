
import SwiftUI

struct HomeScreen: View {
    var body: some View {
        
        VStack(spacing: 10, content: {
            TopUserBar(userName: "Habil Cangir", remainingRVCR: 20, vipType: 3, salesCount: 20, profileImage: nil)
            
        })
    }
    
    
    
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
