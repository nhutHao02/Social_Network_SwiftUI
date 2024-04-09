//
//  NotificationView.swift
//  Social_Network
//
//  Created by TranHao on 05/04/2024.
//

import SwiftUI

struct NotificationView: View {
    var body: some View {
        ScrollView{
            LazyVStack{
                ForEach(0..<30, id: \.self) { item in
                    NotificationRowView()
                    Divider()
                }
            }
        }
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            MainTabView()
        }
    }
}
