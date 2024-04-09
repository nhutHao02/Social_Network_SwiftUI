//
//  EditProfileView.swift
//  Social_Network
//
//  Created by TranHao on 09/04/2024.
//

import SwiftUI

struct EditProfileView: View {
    @State private var text: String = ""
    @State private var ipName: String = ""
    @State private var ipEmail: String = ""
    @State private var ipBio: String = ""
    @State private var ipLocation: String = ""
    @State private var sex: Bool = true
    var body: some View {
        VStack{
            // toolbar
            actionBar
            imageProfile
            editInfo
            
            Spacer()
        }
        
    }
}

struct EditProfileView_Previews: PreviewProvider {
    static var previews: some View {
        EditProfileView()
        //        NavigationView{
        //            ProfileView()
        //        }
    }
}
extension EditProfileView {
    var actionBar: some View{
        HStack{
            Text("Cancel")
                .frame(width: 60, alignment: .leading)
            Spacer()
            Text("New message")
                .bold()
                .font(.system(size: 20))
                .frame(width: 200, alignment: .center)
            Spacer()
            Text("Save")
                .bold()
                .frame(width: 60)
        }
        .padding(.horizontal, 10)
    }
    var imageProfile: some View{
        VStack{
            ZStack(alignment: .center){
                Image("images")
                    .resizable()
                    .frame(width: .infinity, height: 150)
                    .overlay {
                        Color(.black).opacity(0.2)
                    }
                Image(systemName: "photo.on.rectangle.angled")
                    .font(.system(size: 40))
                    .foregroundColor(.white)
            }
            HStack{
                ZStack(alignment: .center){
                    Circle()
                        .frame(width: 60, height: 60, alignment: .center)
                        .foregroundColor(.blue)
                        .overlay {
                            Circle().stroke(lineWidth: 2).foregroundColor(.white)
                        }
                    Image(systemName: "photo.on.rectangle.angled")
                        .font(.system(size: 15))
                        .foregroundColor(.white)
                }
                .offset(x: 0, y: -20)
                Spacer()
                Button {
                    
                } label: {
                    Text("Change password")
                        .bold()
                        .padding(.vertical, 5)
                        .padding(.horizontal, 10)
                        .overlay {
                            RoundedRectangle(cornerRadius: 20).stroke().foregroundColor(.gray)
                        }
                }
                
            }
            .padding(.horizontal, 10)
        }
    }
    var editInfo: some View{
        VStack{
            Divider()
            VStack{
                // full name
                EditProfileRowView(nameField: "Full name", placeholder: "Add your full name", textIn: $ipName)
                Divider()
                //bio
                EditProfileRowView(nameField: "Bio", placeholder: "Add a bio to your profile", textIn: $ipBio)
                Divider()
                // email
                EditProfileRowView(nameField: "Email", placeholder: "Add your email", textIn: $ipEmail)
            }
            Divider()
            // sex
            HStack{
                Text("Sex")
                    .bold()
                    .frame(width: 100, alignment: .leading)
                HStack{
                    Text("Male")
                    Image(systemName: sex ? "largecircle.fill.circle" : "circle")
                        .onTapGesture {
                            sex.toggle()
                        }
                    Spacer().frame(width: 20)
                    Text("Female")
                    Image(systemName: sex ? "circle" : "largecircle.fill.circle")
                        .onTapGesture {
                            sex.toggle()
                        }
                    Spacer()
                }
            }
            .padding(.horizontal, 10)
            
            Divider()
            // birth date
            HStack{
                Text("Birth date")
                    .bold()
                    .frame(width: 100, alignment: .leading)
                Text("Add your birth date")
                    .frame(width: .infinity)
                    .foregroundColor(.gray.opacity(0.5))
                Spacer()
                Image(systemName: "calendar")
            }
            .padding(.horizontal, 10)
            
            Divider()
            // Location
            HStack{
                Text("Location")
                    .bold()
                    .frame(width: 100, alignment: .leading)
                TextField("Add your location", text: $ipLocation)
                    .frame(width: .infinity)
            }
            .padding(.horizontal, 10)
        }
    }
}
