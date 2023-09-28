
import SwiftUI

struct P2PScreen: View {
    var body: some View {
        VStack(spacing: -40, content: {
            TopUserBar(userName: "Habil Cangir", remainingRVCR: 20, vipType: 3, salesCount: 20, profileImage: nil)
            
            TabViewP2P()
                .padding(.vertical,50)
        })
    }
}

struct TabViewP2P: View{
    var body: some View{
        TabView {
            
            NavigationLink(destination: ConnectView()) {
                Rectangle()
                    .frame(minWidth: 240,
                           idealWidth:270 ,
                           maxWidth: .infinity,
                           minHeight: 320,
                           idealHeight: 360,
                           maxHeight: .infinity,
                           alignment: .leading)
                    .foregroundColor(Color("ExtraLightGray"))
                    .overlay(alignment: .center) {
                        Image("amico")
                            .resizable()
                            .frame(minWidth: 240,
                                   idealWidth:270 ,
                                   maxWidth: .infinity,
                                   minHeight: 320,
                                   idealHeight: 360,
                                   maxHeight: .infinity,
                                   alignment: .center)
                            .scaledToFit()
                    }
                    .cornerRadius(25)
                    .padding(60)
            }

            NavigationLink(destination: ConnectView()) {
                
                Rectangle()
                    .frame(minWidth: 240,
                           idealWidth:270 ,
                           maxWidth: .infinity,
                           minHeight: 320,
                           idealHeight: 360,
                           maxHeight: .infinity,
                           alignment: .leading)
                    .foregroundColor(Color("ExtraLightGray"))
                    .overlay(alignment: .center) {
                        Image("amico2")
                            .resizable()
                            .frame(minWidth: 240,
                                   idealWidth:270 ,
                                   maxWidth: .infinity,
                                   minHeight: 320,
                                   idealHeight: 360,
                                   maxHeight: .infinity,
                                   alignment: .center)
                            .scaledToFit()
                    }.cornerRadius(25)
                    .padding(60)
            }

        }
        .tabViewStyle(.page(indexDisplayMode: .automatic))
    }
    
    func pressedP2PRandomChatMatch(){
        print("pressedP2PRandomChatMatch")
    }
    
    func pressedP2PRandomVideoChatMatch(){
        print("pressedP2PRandomVideoChatMatch")
    }
        
}


struct P2PScreen_Previews: PreviewProvider {
    static var previews: some View {
        P2PScreen()
    }
}
