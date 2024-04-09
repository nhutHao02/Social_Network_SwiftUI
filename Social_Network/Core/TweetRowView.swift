//
//  TweetView.swift
//  Social_Network
//
//  Created by TranHao on 08/04/2024.
//

import SwiftUI

struct TweetRowView: View {
    var body: some View {
        HStack{
            VStack{
                Circle()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.gray)
                Spacer()
            }
            VStack(alignment: .leading){
                VStack(alignment: .leading){
                    HStack{
                        Text("Full name")
                            .bold()
                        Spacer()
                        Image(systemName: "ellipsis")
                            .padding(.horizontal, 10)
                    }
                    Text("This is content")
                    Spacer()
                }
                
                Image("images")
                    .resizable()
                    .frame(height: 200)
                    .cornerRadius(10)
                
                actionBar
            }
        }
        .padding(.horizontal, 10)
    }
}

struct TweetView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            MainTabView()
        }
    }
}
extension TweetRowView {
    var actionBar: some View{
        HStack{
            HStack{
                Image(systemName: "heart")
                Text("100")
            }
            Spacer()
            HStack {
                Image(systemName: "message")
                Text("100")
            }
            Spacer()
            HStack {
                Image(systemName: "arrow.2.squarepath")
                Text("100")
            }
            Spacer()
            Image(systemName: "bookmark")
        }
        .foregroundColor(.gray)
    }
}
