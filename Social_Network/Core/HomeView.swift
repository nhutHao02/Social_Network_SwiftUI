//
//  HomeView.swift
//  Social_Network
//
//  Created by TranHao on 05/04/2024.
//

import SwiftUI

struct HomeView: View {
    @State private var activeTab: Bool = true
    @State private var opacity: Double = 1.0
    @State private var showNewTweet: Bool = false
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            ZStack(alignment: .topLeading){
                ScrollView{
                    LazyVStack {
                        ForEach(0...20, id: \.self) { item in
                            TweetRowView()
                            Divider()
                        }
                    }
                    .padding(.top, 50)
                }
                
                tabmenu
                    .background(opacity.isEqual(to: 0.0) ? .clear : .white)
                    .opacity(opacity)
                
            }
            // button add Tweet
            Button {
                showNewTweet.toggle()
            } label: {
                Text("+")
                    .baselineOffset(5)
                    .foregroundColor(.white)
                    .font(.system(size: 40))
                    .frame(width: 60, height: 60, alignment: .center)
                    .background(.blue)
                    .clipShape(Circle())
                    .padding()
            }
            
        }
        .fullScreenCover(isPresented: $showNewTweet) {
            NewTweetView()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            MainTabView()
        }
    }
}
extension HomeView {
    var tabmenu: some View{
        VStack{
            HStack{
                Spacer()
                
                Text("For you")
                    .overlay(RoundedRectangle(cornerRadius: 10)
                        .frame(height: 3)
                        .foregroundColor(activeTab ? .blue : .clear)
                        .offset(y: 5), alignment: .bottom)
                    .onTapGesture {
                        withAnimation(.linear) {
                            activeTab.toggle()
                        }
                    }
                
                Spacer()
                
                Text("Following")
                    .overlay(RoundedRectangle(cornerRadius: 10)
                        .frame(height: 3)
                        .foregroundColor(activeTab ? .clear : .blue)
                        .offset(y: 5), alignment: .bottom)
                    .onTapGesture {
                        withAnimation(.easeOut) {
                            activeTab.toggle()
                        }
                    }
                
                Spacer()
            }
            Divider()
        }
        .padding(.top, 10)
    }
}
