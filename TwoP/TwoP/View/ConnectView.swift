
import SwiftUI
import StreamVideo
import StreamVideoSwiftUI

struct ConnectView: View {
    @ObservedObject var viewModel: CallViewModel
    private let apiKey: String = "mmhfdzb5evj2" // The API key can be found in the Credentials section
    private let userId: String = "ciftçi kamal" // The User Id can be found in the Credentials section
    private let token: String = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoiQmFzdGlsYV9TaGFuIiwiaXNzIjoicHJvbnRvIiwic3ViIjoidXNlci9CYXN0aWxhX1NoYW4iLCJpYXQiOjE2OTYyNDA5OTUsImV4cCI6MTY5Njg0NTgwMH0.9K43l1-NmG4m3AHQt44spZLUqxlRbn96ZpUqgnbr9qI" // The Token can be found in the Credentials section
    private let callId: String = "uEM3uN3XuD8X" // The CallId can be found in the Credentials section
    
    init(){
                let user = User(
                    id: userId,
                    name: "Martin", // name and imageURL are used in the UI
                    imageURL: .init(string: "https://getstream.io/static/2796a305dd07651fcceb4721a94f4505/a3911/martin-mitrevski.webp")
                )
        
                // Initialize Stream Video client
                self.client = StreamVideo(
                    apiKey: apiKey,
                    user: user,
                    token: .init(stringLiteral: token)
                )
                self.viewModel = .init()
    }

    private var client: StreamVideo
    var body: some View {
        NavigationLink(destination: {
//            VideoCallingView()
                        VStack {
                            if viewModel.call != nil {
                                CallContainer(viewFactory: DefaultViewFactory.shared, viewModel: viewModel)
                            } else {
                                Text("loading...")
                            }
                        }.onAppear {
                            Task {
                                guard viewModel.call == nil else { return }
                                viewModel.joinCall(callType: .default, callId: callId)
                            }
                        }
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

