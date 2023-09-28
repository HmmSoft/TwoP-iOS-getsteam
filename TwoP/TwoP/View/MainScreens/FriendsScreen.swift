//
//  FriendsScreen.swift
//  TwoP
//
//  Created by admin on 24.08.2023.
//  Copyright © 2023 HmmSoft. All rights reserved.
//

import SwiftUI

struct FriendsScreen: View {
    let profileImage: Image = Image(systemName: "person")
    @State var isUserActive: Bool = false
    @State var userLVL: String = "beginer"
    
    var body: some View {
            
        @State var friendsList: [String] = [ "Ahmet", "Osman", "Hamdi", "Berk" ,"Sefa", "ekcwkewxaxxaxmaxmakmxkaxekpwkekf","Ahmet", "Osman", "Hamdi", "Berk" ,"Sefa", "ekcwkewxaxxaxmaxmakmxkaxekpwkekf"
        ]
        NavigationView {
            ScrollView {
                VStack{
                    ForEach(friendsList, id: \.self, content: { friend in
                        
                        NavigationLink(destination: {
                            FriendChattingView()
                        }, label: {
                            Rectangle()
                                .frame(maxWidth: .infinity, minHeight: 60, maxHeight: 60, alignment : .leading)
                                .cornerRadius(10)
                                .foregroundColor(Color("ExtraLightGray"))
                                .overlay {
                                    HStack {
                                        ZStack(alignment: .bottomTrailing, content: {
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
                                            .foregroundColor(.black)
                                            
                                            Circle()
                                                .frame(width: 14, height: 14)
                                                .background(.black)
                                                .clipShape(Circle())
                                                .overlay {
                                                    Circle()
                                                        .frame(width: 12, height: 12)
                                                        .foregroundColor(isUserActive ? .green : .white)
                                                }
                                            
                                        })
                                        .padding(.leading , 10)
                                        
                                        VStack(alignment: .leading, spacing: 4, content: {
                                            HStack{
                                                Image("crownYellow")
                                                    .resizable()
                                                    .frame(width: 26, height: 24, alignment: .center)
                            
                                                Text(friend)
                                                    .frame(minWidth: 100,
                                                           maxWidth: .infinity,
                                                           minHeight: 25,
                                                           maxHeight: 25,
                                                           alignment: .leading)
                                                    .foregroundColor(.black)
                                            }
                                            
                                            HStack(spacing: 2, content: {
                                                
                                                Text("#")
                                                    .font(Font.custom("Myanmar Khyay", size: 20))
                                                    .foregroundColor(.black)
                                                    .frame(width: 16, height: 16, alignment: .center)
                                                Image("England (GB-ENG)")
                                                    .resizable()
                                                    .frame(width: 21, height: 15)
                                                    
                                                    
                                                
                                                Text("#")
                                                    .font(Font.custom("Myanmar Khyay", size: 20))
                                                    .foregroundColor(.black)
                                                    .frame(width: 16, height: 16, alignment: .center)
                                                
                                                Text("Beginer")
                                                    .frame(width: 100, height:20 , alignment: .leading)
                                                    .font(.caption)
                                                    .foregroundColor(.black)
                                            })
                                            
                                        })
                                    }
                                }
                                
                        })
                    })
                    
                }
                
                .padding()
                .navigationTitle("Friends List")
            }
            
        }
        .navigationViewStyle(StackNavigationViewStyle())
        
        
    }
    
}

struct FriendsScreen_Previews: PreviewProvider {
    static var previews: some View {
        FriendsScreen()
    }
}
