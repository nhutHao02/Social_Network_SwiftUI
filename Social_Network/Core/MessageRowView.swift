//
//  MessageRowView.swift
//  Social_Network
//
//  Created by TranHao on 09/04/2024.
//

import SwiftUI

struct MessageRowView: View {
    var body: some View {
        HStack{
            Circle()
                .frame(width: 65, height: 65)
                .foregroundColor(.gray)
            VStack(alignment: .leading){
                HStack{
                    Text("Name")
                        .bold()
                        .font(.system(size: 20))
                    Spacer()
                    Text("24m")
                }
                Text("This is content...")
            }
        }
        .padding(.horizontal, 10)
    }
}

struct MessageRowView_Previews: PreviewProvider {
    static var previews: some View {
        MessageRowView()
    }
}
