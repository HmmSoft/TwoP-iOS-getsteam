
import SwiftUI
import Firebase
import FirebaseAuth

struct ProfileScreen: View {
    var body: some View {
        List{
            Section{
                HStack{
                    Text("MH")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .frame(width: 72, height: 72, alignment: .center)
                        .background(Color(.systemGray3))
                        .clipShape(Circle())
                    VStack(alignment: .leading, spacing: 4, content: {
                        Text("Merih Hatay")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .padding(.top,4)
                        
                        Text("test@gmail.com")
                            .font(.footnote)
                    })
                }
            }
        }
    }
}

struct ProfileScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProfileScreen()
    }
}
