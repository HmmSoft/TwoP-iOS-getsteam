import SwiftUI

struct CustomViews_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            TopUserBar(userName: "Habil Cangir", remainingRVCR: 20, vipType: 3, salesCount: 20, profileImage: nil)
           
        }
        
    }
}


struct CustomTextField: View{
    
    var placeHolder: String
    var imageName: String
    var bColor: String
    var tOpacity: Double
    @Binding var value: String
    
    var body: some View{
        
        ZStack{
            
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 330, height: 45, alignment: .center)
                .foregroundColor(Color("ExtraLightGray"))
                .overlay(alignment: .leading) {
                    
                    Image(systemName: imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 20, height: 20)
                        .padding(.leading, -190)
                        .foregroundColor(Color(bColor).opacity(1.0))
                    
                    
                    if placeHolder == "Password" || placeHolder == "Confirm Password"{
                        ZStack(alignment: .leading){
                            if value.isEmpty{
                                Text(placeHolder)
                                    .foregroundColor(Color(bColor).opacity(tOpacity))
                                    .padding(.leading, 12)
                                    .font(.system(size: 20))
                            }
                            
                            SecureField("",text: $value)
                                .padding(.leading,12)
                                .font(.system(size: 20))
                                .frame(height: 45)
                            
                        }
                    }
                    else {
                        ZStack(alignment: .leading) {
                            if value.isEmpty{
                                Text(placeHolder)
                                    .foregroundColor(Color(bColor).opacity(tOpacity))
                                    .padding(.leading, 12)
                                    .font(.system(size: 20))
                            }
                            
                            TextField("", text: $value)
                                .padding(.leading, 12)
                                .font(.system(size: 20))
                                .frame(height: 45)
                                .foregroundColor(Color(bColor))
                        }
                    }
                }
        
        }
    }
}

struct CustomButtonView: View{
    
    var title: String
    var fontSize: CGFloat
    var fgColor: String
    var bgColor: String
    var width: CGFloat
    var height: CGFloat
    var radius: CGFloat
    
    
    var body: some View{
        
        ZStack {
            RoundedRectangle(cornerRadius: radius)
                .frame(width: width, height: height)
                .foregroundColor(Color.black)
                .padding(.leading, radius)
                .padding(.top, radius)
            
            Rectangle()
                .frame(width: width, height: height)
                .background(Color(bgColor))
                .cornerRadius(radius)
                .overlay {
                    Text(title)
                        .font(.system(size: fontSize))
                        .fontWeight(.bold)
                        .foregroundColor(Color(fgColor))
                        .frame(height: height)
                        .frame(maxWidth: .infinity)
                        .background(Color(bgColor))
                        .cornerRadius(radius)
                }
        }
    }
}



struct TopUserBar: View {
    
    let userName: String?
    let remainingRVCR: Int?
    let vipType: Int?
    let salesCount: Int?
    let profileImage: Image?
    
    
    init(userName: String?, remainingRVCR: Int?, vipType: Int?, salesCount:Int?, profileImage: Image?){
        self.userName = userName ?? "User Name"
        self.remainingRVCR = remainingRVCR ?? 0
        self.vipType = vipType ?? 0
        self.salesCount = salesCount ?? 0
        self.profileImage = profileImage ?? Image(systemName: "person")
    }
    
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Rectangle()
              .foregroundColor(.clear)
              .frame(maxWidth: .infinity, minHeight: 150, maxHeight: 150, alignment: .center)
              .background(Color("ExtraLightGray"))
              .cornerRadius(25)
              .overlay(alignment: .center) {
                  VStack(alignment: .center, spacing: 10) {
                      HStack(alignment: .center) {
                          HStack {
                              profileImage
                                  .font(.custom("username", size: 42))
                                  .frame(width: 42, height: 42, alignment: .center)
                                  .background(Color.gray)
                                  .clipShape(Circle())
                                  .frame(width: 46, height: 46, alignment: .center)
                                  .background(Color.orange)
                                  .clipShape(Circle())
                                  .frame(width: 48, height: 48, alignment: .center)
                                  .background(Color.black)
                                  .clipShape(Circle())
                              
                              VStack(alignment: .leading, spacing: 0, content:{
                                  Text(userName ?? "UserName")
                                      .font(.title2)
                                      .fontWeight(.semibold)
                                      .frame(maxWidth: .infinity, maxHeight:20 ,alignment: .leading)
                                      
                                  Text("remainingRVCR: \(remainingRVCR!)")
                                      .font(.body)
                                      .frame(width: 180,height: 20, alignment: .leading)
                              })
                          }
                          
                          HStack(alignment: .center, spacing: 1) {
                              Image("crownYellow")
                                  .resizable()
                                  .frame(width: 33, height: 29, alignment: .center)
                              Text("VIP \(vipType!)")
                                  .fontWeight(.heavy)
                          }
                      }
                      .padding(.horizontal, 10)
                      
                      HStack(alignment: .center, spacing: 10) {
                          
                          Button {
                              pressedPremiumButton()
                          } label: {
                              Rectangle()
                                  .frame(
                                         maxWidth: .infinity,
                                         minHeight: 64,
                                         maxHeight: 64,
                                         alignment: .center)
                                  .foregroundColor(Color(red: 1, green: 0.6, blue: 0))
                                  .cornerRadius(25)
                                  .overlay(
                                      Text("\(salesCount!)% discount on premium")
                                        .frame(
                                               maxWidth: .infinity,
                                               minHeight: 64,
                                               maxHeight: 64,
                                               alignment: .center),
                                      alignment: .center)
                                        .font(Font.custom("Myanmar Khyay", size: 16))
                                        .foregroundColor(.black)
                          }
                          
                          
                          Button {
                              pressedAdsButton()
                          } label: {
                              Rectangle()
                                  .frame(minWidth: 103,
                                         maxWidth: 120,
                                         minHeight: 64,
                                         maxHeight: 64,
                                         alignment: .center)
                                  //.frame(width: 103, height: 64)
                                  .foregroundColor(Color(red: 0.27, green: 0.35, blue: 0.39))
                                  .cornerRadius(25)
                                  .overlay(
                                      Text("Watch Ads")
                                        .font(Font.custom("Myanmar Khyay", size: 16))
                                        .foregroundColor(.white)
                                        .frame(minWidth: 103,
                                               idealWidth: 150,
                                               maxWidth: 200,
                                               minHeight: 64,
                                               maxHeight: 64,
                                               alignment: .center))
                          }

                      }
                      .padding(.horizontal, 10)
                  }
              }
              .padding(.horizontal)
            
        }
    }
    
    func pressedAdsButton(){
        print(1)
    }
    
    func pressedPremiumButton(){
        print(2)
        
    }
    
}


