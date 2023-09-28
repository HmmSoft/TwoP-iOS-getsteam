
import SwiftUI
struct LogInView: View {
    
    
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var showSecondScreen = false
    var body: some View {
        
        ZStack {
            //MARK: - background template
            VStack(spacing: -110, content:{
                Spacer(minLength: 180)
                Image("VectorPurpleSignIn")
                    .frame(width: 281, height: 329, alignment: .topLeading)
                    .padding(.trailing, 150)
                Image("VectorPinkSingIn")
                    .frame(width: 374, height: 288 ,alignment: .trailing)
                    .padding(.leading, 60)
                Image("VectorGreenSignIn")
                    .resizable()
                    .frame(width: 344, height: 298 , alignment: .leading)
                    .padding(.trailing, 90)
                    .padding(.bottom,130)
                Spacer(minLength: 180)
                Image("VectorPurpleSignIndown")
                    .frame(width: 312, height: 243, alignment: .topLeading)
                    .padding(.leading, 220)
            })
            
            VStack(alignment: .center) {
                Image("SignInScreenImage")
                    .frame(width: 450, height: 500, alignment: .bottom)
                    .aspectRatio(contentMode: .fit)
                
                
                CustomTextField(placeHolder: "email", imageName: "envelope.badge.shield.half.filled.fill", bColor: "LightGray", tOpacity: 1, value: $email)
                    .padding(.top , 40)
                CustomTextField(placeHolder: "Password", imageName: "lock.fill", bColor: "LightGray", tOpacity: 1, value: $password)
                
                
                
                
                Button {
                    
                    
                } label: {
                    CustomButtonView(title: "Sign In", fontSize: 30, fgColor: "DarkGray", bgColor: "Orange", width: 380, height: 60, radius: 10)
                }
                NavigationLink(
                     destination: MainMenuScreens(),
                     isActive: $showSecondScreen,
                     label: {
                         EmptyView()
                     }
                )
                
                
                
            }.offset(y:-150)
            
        }
        
    }
    
}




struct LogInView_Previews: PreviewProvider {
    static var previews: some View {
        LogInView()
    }
}
