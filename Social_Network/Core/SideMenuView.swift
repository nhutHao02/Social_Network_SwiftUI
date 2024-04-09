//
//  SideMenuView.swift
//  Social_Network
//
//  Created by TranHao on 05/04/2024.
//

import SwiftUI
enum MenuItem:String, CaseIterable{
    case profile
    case lists
    case bookMarks
    case logout
    var description: String{
        switch self {
        case .profile:
            return "Profile"
        case .lists:
            return "Lists"
        case .bookMarks:
            return "Book marks"
        case .logout:
            return "Log out"
        }
    }
    var iconName: String{
        switch self {
        case .profile:
            return "person"
        case .lists:
            return "list.bullet"
        case .bookMarks:
            return "bookmark"
        case .logout:
            return "arrow.left.square"
        }
    }
}
struct SideMenuView: View {
    var body: some View {
        VStack(alignment: .leading){
            // ìnfo
            VStack(alignment: .leading){
                Image(systemName: "person.fill")
                    .font(.system(size: 40))
                    .frame(width: 50, height: 50)
                    .overlay {
                        Circle().stroke()
                    }
                Text("Trasn Nhut Hao")
                    .bold()
                    .font(.title2)
                Text("@trannhuthao")
                    .font(.title3)
                HStack{
                    Text("3")
                        .bold()
                    Text("Following")
                    Text("5")
                        .bold()
                    Text("Follower")
                    
                }
            }
            .padding()
            Divider()
            
            ForEach(MenuItem.allCases, id: \.rawValue){ item in
                SideMenuRowView(item: item)
            }
            Spacer()
        }
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}
