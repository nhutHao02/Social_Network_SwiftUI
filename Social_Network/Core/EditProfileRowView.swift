//
//  EditProfileRowView.swift
//  Social_Network
//
//  Created by TranHao on 09/04/2024.
//

import SwiftUI

struct EditProfileRowView: View {
    let nameField: String
    let placeholder: String
    @Binding var textIn: String
    var body: some View {
        HStack{
            Text(nameField)
                .bold()
                .frame(width: 100, alignment: .leading)
            TextField(placeholder, text: $textIn)
                .frame(width: .infinity)
        }
        .padding(.horizontal, 10)
    }
}

struct EditProfileRowView_Previews: PreviewProvider {
    static var previews: some View {
        EditProfileRowView(nameField: "", placeholder: "", textIn: .constant(""))
    }
}
