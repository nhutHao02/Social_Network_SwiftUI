//
//  CustomTextFieldView.swift
//  Social_Network
//
//  Created by TranHao on 04/04/2024.
//

import SwiftUI

struct CustomTextFieldView: View {
    @Binding var text: String
    let iconName, placeholder: String
    let isSecure: Bool
    var body: some View {
        HStack{
            Image(systemName: iconName)
                .resizable()
                .scaledToFit()
                .foregroundColor(.white)
                .frame(width: 40, height: 40)
            Group{
                if isSecure {
                    SecureField(placeholder, text: $text)
                } else {
                    TextField(placeholder, text: $text)
                }
            }
            .font(.title2)
            .padding()
            .frame(height: 50)
            .background(.white)
            .cornerRadius(30)
        }
        .padding(.horizontal, 30)
        .padding(.vertical, 5)
    }
}

struct CustomTextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTextFieldView(text: .constant(""), iconName: "love", placeholder: "enter", isSecure: true)
            .preferredColorScheme(.dark)
    }
}
