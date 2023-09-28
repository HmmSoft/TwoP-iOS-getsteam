import SwiftUI

struct FriendChattingView: View {
    @State var messages: [String:String] = [
        "Habil Cangir":"Merhaba", "Ahmet Çetin":"Merhaba",
        
    ]
    let profileImage: Image = Image(systemName: "person")
    let userName: String = "Habil Cangir"
    @State var textFieldText: String = ""
    var body: some View {
        VStack(spacing: -10, content: {
            VStack(spacing: -40, content: {
                Rectangle()
                    .frame(height: 60)
                    .foregroundColor(.clear)
                HStack(alignment: .center, content: {
                    
                    Button {
                        // start a calling
                    } label: {
                        Image("fluent_call-32-regular")
                    }

                    
                    
                    VStack (alignment: .center, content: {
                        profileImage
                            .font(.custom("username", size: 56))
                            .frame(width: 56, height: 56, alignment: .center)
                            .background(Color.gray)
                            .clipShape(Circle())
                            .frame(width: 62, height: 62, alignment: .center)
                            .background(Color.orange)
                            .clipShape(Circle())
                            .frame(width: 67, height: 67, alignment: .center)
                            .background(Color.black)
                            .clipShape(Circle())
                        
                        Text(userName)
                            .font(.title2)
                            .fontWeight(.semibold)
                            .frame(maxWidth: .infinity, maxHeight:20 ,alignment: .center)
                        
                        HStack(alignment: .center, spacing: 2, content: {
                            
                            Text("#")
                                .font(Font.custom("Myanmar Khyay", size: 20))
                                .foregroundColor(.black)
                            Image("England (GB-ENG)")
                                .resizable()
                                .frame(width: 21, height: 15)
                                
                            Text("#")
                                .font(Font.custom("Myanmar Khyay", size: 20))
                                .foregroundColor(.black)
                            
                            Text("Beginer")
                                .font(.caption)
                        })
                        
                    })
                    
                    Button {
                        // start video calling
                    } label: {
                        Image("fluent_video-person-call-16-regular")
                    }

                    
                    
                })
                .padding(40)
                
                
                Rectangle()
                    .frame(maxWidth: .infinity,
                           minHeight: 2,
                           maxHeight: 2,
                           alignment: .center)
                    .padding()
            })
            .ignoresSafeArea()
            
            ScrollView(.vertical, showsIndicators: true) {                VStack(alignment: .center, spacing: 10) {
                    ForEach(messages.keys.sorted(), id: \.self) { keys in
                        Text(keys + "\n  " + (messages[keys] ?? "") )
                        
                    }
                }
            }
            
            HStack(alignment: .center, spacing: 10) {
                Rectangle()
                  .foregroundColor(.clear)
                  .frame(maxWidth: .infinity,
                         minHeight: 68,
                         maxHeight: 68)
                  .cornerRadius(25)
                  .overlay(
                    RoundedRectangle(cornerRadius: 25)
                      .inset(by: 0.5)
                      .stroke(.black, lineWidth: 1)
                      .overlay(
                        HStack(content: {
                            TextField("Type Here...", text: $textFieldText)
                              .padding(.horizontal)
                            
                            Button {
                                //send message
                            } label: {
                                Image("Send")
                                    .padding(.horizontal)
                            }
                        })
                      )
                  )
                Button {
                    //Attach a file
                } label: {
                    Image("AttachFile")
                }
                
            }
            .padding()
        })
        
        
    }
}

struct FriendChattingView_Previews: PreviewProvider {
    static var previews: some View {
        FriendChattingView()
    }
}
