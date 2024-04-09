//
//  ExploreView.swift
//  Social_Network
//
//  Created by TranHao on 05/04/2024.
//

import SwiftUI

struct ExploreView: View {
    @State private var text: String = ""
    var body: some View {
        VStack{
            SearchBarView(text: $text)
            ScrollView{
                LazyVStack{
                    ForEach(0..<20) { user in
                        HStack{
                            Circle()
                                .frame(width: 50, height: 50)
                                .foregroundColor(.blue)
                            Text("Name")
                                .bold()
                            Spacer()
                        }
                        .padding(.horizontal, 10)
                    }
                }
            }
            Spacer()
        }
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ExploreView()
        }
    }
}
