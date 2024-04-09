//
//  MainTabView.swift
//  Social_Network
//
//  Created by TranHao on 05/04/2024.
//

import SwiftUI
enum Tab: String{
    case Home
    case Explore
    case Notification
    case Message
}
struct MainTabView: View {
    @State private var selectedTab: Tab = .Home
    @State private var showSideMenu: Bool = false
    var body: some View {
        ZStack(alignment: .topLeading){
            tabView
            
            // side Menu
            if showSideMenu {
                ZStack{
                    Color.black.opacity(0.25)
                }
                .onTapGesture {
                    showSideMenu = false
                }
                .ignoresSafeArea()
            }
            SideMenuView()
                .frame(width: 300)
                .background(.white)
                .offset(x: showSideMenu ? 0 : -300, y:0)
        }
        .navigationTitle(selectedTab.rawValue)
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarHidden(showSideMenu ? true : false)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Image(systemName: "person.fill")
                    .overlay {
                        Circle().stroke()
                    }
                    .onTapGesture {
                        showSideMenu.toggle()
                    }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                Image(systemName: "gear")
            }
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            MainTabView()
        }
    }
}
extension MainTabView {
    var tabView: some View {
        TabView(selection: $selectedTab) {
            HomeView()
                .onTapGesture {
                    selectedTab = .Home
                }
                .tabItem {
                    Image(systemName: "house")
                }
                .tag(Tab.Home)
            
            ExploreView()
                .onTapGesture {
                    selectedTab = .Explore
                }
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
                .tag(Tab.Explore)
            
            NotificationView()
                .onTapGesture {
                    selectedTab = .Notification
                }
                .tabItem {
                    Image(systemName: "bell")
                }
                .tag(Tab.Notification)
            
            MessageView()
                .onTapGesture {
                    selectedTab = .Message
                }
                .tabItem {
                    Image(systemName: "envelope")
                }
                .tag(Tab.Message)
        }
    }
}
