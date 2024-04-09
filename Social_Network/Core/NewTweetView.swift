//
//  NewTweetView.swift
//  Social_Network
//
//  Created by TranHao on 09/04/2024.
//

import SwiftUI

struct NewTweetView: View {
    @Environment(\.presentationMode) var premode
    var body: some View {
        VStack(alignment: .leading){
            // toolbar
            HStack{
                Text("Cancel")
                    .foregroundColor(.blue)
                    .font(.title3)
                    .onTapGesture {
                        premode.wrappedValue.dismiss()
                    }
                Spacer()
                Button {
                    
                } label: {
                    Text("Post")
                        .font(.system(size: 18))
                        .foregroundColor(.white)
                        .padding(.horizontal, 15)
                        .padding(.vertical, 10)
                        .background(.blue)
                        .cornerRadius(30)
                }
            }
            // body
            HStack{
                VStack{
                    Circle()
                        .frame(width: 45, height: 45)
                    Spacer()
                }
                VStack{
                    Text("What's happend?")
                        .font(.system(size: 20))
                    Spacer()
                }
                .offset(x: 0, y: 10)
                
            }
            
        }
        .navigationBarHidden(true)
        .padding(.horizontal, 10)
    }
}

struct NewTweetView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            NewTweetView()
        }
    }
}
