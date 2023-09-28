
import SwiftUI

struct MainMenuScreens: View {
    var body: some View {
        @State var animateScreenTransition: Bool = false
        @State var selectedTab: Int = 1
        TabView (selection: $selectedTab, content: {
            HomeScreen()
                .tabItem {
                    Image("homeIcon")
                        .renderingMode(.template)
                }.tag(1)
                
            
            TasksScreen()
                .tabItem {
                    Image("taskIcon")
                        .renderingMode(.template)
                }.tag(2)
                
            P2PScreen()
                .tabItem {
                    Image("p2pIcon")
                        .renderingMode(.template)
                }.tag(3)
            
            FriendsScreen()
                .tabItem {
                    Image("friendsIcon")
                        .renderingMode(.template)
                }.tag(4)
            
            ProfileScreen()
                .tabItem {
                    Image("profileIcon")
                        .renderingMode(.template)
                }.tag(5)
                
        })
        .tint(.orange)
        
    }
    
    
}

struct MainMenuScreens_Previews: PreviewProvider {
    static var previews: some View {
        MainMenuScreens()
    }
    
}
