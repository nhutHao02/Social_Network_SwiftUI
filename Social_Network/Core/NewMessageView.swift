//
//  NewMessageView.swift
//  Social_Network
//
//  Created by TranHao on 09/04/2024.
//

import SwiftUI

struct NewMessageView: View {
    @State private var text: String = ""
    var body: some View {
        VStack{
            // toolbar
            HStack{
                Text("Cancel")
                    .frame(width: 60, alignment: .leading)
                Spacer()
                Text("New message")
                    .bold()
                    .font(.system(size: 20))
                    .frame(width: 200, alignment: .center)
                Spacer()
                Text("")
                    .frame(width: 60)
                
                
            }
            // send to:
            Divider()
            HStack{
                Text("To:")
                TextField("", text: $text)
                    .frame(width: .infinity)
            }
            Divider()
            // list user
            ScrollView{
                LazyVStack{
                    ForEach(0..<20){ user in
                        HStack{
                            Circle()
                                .frame(width: 50, height: 50)
                            Text("Name")
                                .bold()
                            Spacer()
                        }
                    }
                }
            }
            Spacer()
        }
        .padding()
    }
}

struct NewMessageView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            NewMessageView()
                .navigationBarHidden(true)
        }
    }
}
