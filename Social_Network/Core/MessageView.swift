//
//  MessageView.swift
//  Social_Network
//
//  Created by TranHao on 05/04/2024.
//

import SwiftUI

struct MessageView: View {
    @State private var showNewMess: Bool = false
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            ZStack(alignment: .topLeading){
                ScrollView{
                    LazyVStack {
                        ForEach(0...20, id: \.self) { item in
                           MessageRowView()
                        }
                    }
                }
            }
            Button {
                showNewMess.toggle()
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
        .sheet(isPresented: $showNewMess) {
            NewMessageView()
        }
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            MainTabView()
        }
    }
}
