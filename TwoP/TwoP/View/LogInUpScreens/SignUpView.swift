
import SwiftUI
import Firebase
import FirebaseAuth

struct SignUpView: View {
    
    @State private var fullname: String = ""
    @State private var userName: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var cPassword: String = ""
    @State private var shouldTransition = false
    
    
    var body: some View {
        NavigationView{
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
                    
                    Image("SignUpScreenImage")
                        .frame(width: 450, height: 400, alignment: .bottom)
                        .aspectRatio(contentMode: .fit)
                    
                    CustomTextField(placeHolder: "Name Surname", imageName: "person", bColor: "LightGray", tOpacity: 1, value: $fullname)
                        .padding(.top , 40)
                    
                    CustomTextField(placeHolder: "User Name", imageName: "person.fill", bColor: "LightGray", tOpacity: 1, value: $userName)
                    
                    CustomTextField(placeHolder: "e-mail", imageName: "envelope.badge.shield.half.filled.fill", bColor: "LightGray", tOpacity: 1, value: $email)
                    
                    CustomTextField(placeHolder: "Password", imageName: "lock.fill", bColor: "LightGray", tOpacity: 1, value: $password)
                    CustomTextField(placeHolder: "Confirm Password", imageName: "lock.fill", bColor: "LightGray", tOpacity: 1, value: $cPassword)
                    
                    
                    Button {
                        if cPassword == password{
                            register()
                        }
                        else{
                            print("cPassword and password are different")
                        }
                    }label: {
                        CustomButtonView(title: "Sign Up", fontSize: 32, fgColor: "DarkGray", bgColor: "Orange", width: 380, height: 60, radius: 10)
                    }

    
//                    
//                    .navigationDestination(isPresented: $shouldTransition){
//                            MainMenuScreens()
//                    }
                    
                    .padding(.horizontal, 80)
                    .padding(.top , 40)
                    Spacer()
                    

                }
            }
        }
    }
    
    func register(){
        Auth.auth().createUser(withEmail: email, password: password)
    }
}



struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
    
}





