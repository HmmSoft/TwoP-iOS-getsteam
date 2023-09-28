
import SwiftUI

struct WelcomeScreenView: View {
    var body: some View {
        NavigationView {
            ZStack{
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
                
                VStack(spacing: 0){
                    Image("WelcomeImage")
                        .resizable()
                        .frame(width: 300, height: 250, alignment: .top)
                        .aspectRatio(contentMode: .fill)
                        .padding(30)
                    
                    Text("Welcome! ")
                        .font(Font.custom("Myanmar Khyay", size: 48))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(red: 0.22, green: 0.28, blue: 0.31))
                        .frame(width: 429.99997, height: 78.95764, alignment: .center)
                    
                    Image("Line")
                        .resizable()
                        .frame(width: 350, height: 10, alignment: .top)
                        .aspectRatio(contentMode: .fill)
                    
                    Text("Are you ready to learn English interactively ?")
                        .font(Font.custom("Myanmar Khyay", size: 16))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(red: 0.22, green: 0.28, blue: 0.31))
                        .frame(width: 429.99997, height: 27.98499, alignment: .center)
                    
                    Text("Do you have an existing account?")
                        .font(Font.custom("Myanmar Khyay", size: 30))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(red: 0.22, green: 0.28, blue: 0.31))
                        .frame(width: 429.99997, height: 128.93083, alignment: .center)
                    
                    
                    HStack{
                        NavigationLink(destination: LogInView(), label: {
                            CustomButtonView(title: "Yes", fontSize: 32, fgColor: "ExtraLightGray", bgColor: "DarkGray", width: 160, height: 50, radius: 10)
                        })
                        
                        NavigationLink(destination: SignUpView(), label: {
                            CustomButtonView(title: "No", fontSize: 32, fgColor: "DarkGray", bgColor: "Orange", width: 160, height: 50, radius: 10)
                        })
                    }
                    .padding(.bottom,100)
                    
                }
                .offset(y: -20)
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
        
    }
}


struct WelcomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreenView()
    }
}
