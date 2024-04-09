//
//  SideMenuRowView.swift
//  Social_Network
//
//  Created by TranHao on 05/04/2024.
//

import SwiftUI

struct SideMenuRowView: View {
    let item: MenuItem
    var body: some View {
        HStack{
            Image(systemName: item.iconName)
                .font(.system(size: 20))
                .padding()
            Text(item.description)
                .font(.system(size: 20))
                .bold()
            Spacer()
        }
    }
}

struct SideMenuRowView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuRowView(item: MenuItem.profile)
    }
}
