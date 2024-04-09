//
//  ProfileView.swift
//  Social_Network
//
//  Created by TranHao on 09/04/2024.
//

import SwiftUI

struct ProfileView: View {
    @State private var activeTab: Bool = true
    @State private var showEdit: Bool = false
    var body: some View {
        VStack{
            header
            actionButton
            infoProfile
            tabmenu
            ScrollView{
                LazyVStack{
                    ForEach(0..<20){ tw in
                        TweetRowView()
                    }
                }
            }
            Spacer()
        }
        .ignoresSafeArea()
        .sheet(isPresented: $showEdit) {
            EditProfileView()
        }
        
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
            .previewInterfaceOrientation(.portrait)
    }
}
extension ProfileView {
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
        .padding(.top, 5)
    }
    var header: some View{
        ZStack(alignment: .bottomLeading){
            Image("images")
                .resizable()
                .frame(width: .infinity, height: 150)
            Image(systemName: "arrow.left")
                .font(.system(size: 25))
                .foregroundColor(.white)
                .frame(width: 20, height: 20, alignment: .center)
                .padding()
                .background(Color.black.opacity(0.2))
                .cornerRadius(50)
                .offset(x: 10, y: -60)
            
            
            Circle()
                .frame(width: 70, height: 70)
                .foregroundColor(.blue)
                .overlay {
                    Circle().stroke(lineWidth: 3).foregroundColor(.green)
                }
                .padding(.horizontal, 10)
                .offset(x: 0, y: 45)
            
        }
    }
    var actionButton: some View{
        HStack{
            Spacer()
            Button {
                showEdit.toggle()
            } label: {
                Text("Edit profile")
                    .bold()
                    .font(.system(size: 16))
                    .padding(.horizontal, 10)
                    .padding(.vertical, 5)
                    .overlay {
                        RoundedRectangle(cornerRadius: 50).stroke(lineWidth: 1).foregroundColor(.red)
                    }
            }
        }
        .padding(.horizontal, 10)
    }
    var infoProfile: some View{
        HStack{
            VStack(alignment: .leading) {
                Text("Name")
                    .bold()
                    .font(.system(size: 25))
                Text("This is bio profile")
                    .font(.system(size: 20))
                VStack(alignment: .leading){
                    HStack{
                        Image(systemName: "calendar")
                        Text("Joined Timestamp")
                    }
                    .padding(.vertical, 5)
                    HStack{
                        Image(systemName: "mappin.and.ellipse")
                        Text("Location")
                    }
                    .padding(.bottom, 5)
                }
                .foregroundColor(.black.opacity(0.7))
                HStack{
                    HStack{
                        Text("4")
                            .bold()
                        Text("Following")
                            .foregroundColor(.black.opacity(0.7))
                    }
                    Spacer().frame(width: 20)
                    HStack{
                        Text("4")
                            .bold()
                        Text("Follower")
                            .foregroundColor(.black.opacity(0.7))
                    }
                }
                
            }
            Spacer()
        }
        .padding(.horizontal, 10)
    }
}
