//
//  NotificationRowView.swift
//  Social_Network
//
//  Created by TranHao on 09/04/2024.
//

import SwiftUI

struct NotificationRowView: View {
    var body: some View {
        HStack{
            VStack{
                Image(systemName: "wand.and.stars")
                    .foregroundColor(.blue)
                Spacer()
            }
            VStack(alignment: .leading){
                HStack{
                    Circle()
                        .foregroundColor(.blue)
                        .frame(width: 30, height: 30)
                    Spacer()
                 
                    Image(systemName: "ellipsis")
                }
                Text("Name")
                    .bold()
                Text("This is content")
                    
            }
        }
        .padding()
        
    }
}

struct NotificationRowView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            NotificationView()
        }
    }
}
