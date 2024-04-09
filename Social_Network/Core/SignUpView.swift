//
//  SignUpView.swift
//  Social_Network
//
//  Created by TranHao on 04/04/2024.
//

import SwiftUI

struct SignUpView: View {
    @State private var userName: String = ""
    @State private var pass: String = ""
    @State private var passRepeat: String = ""
    @State private var sex: Bool = true
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack{
            Color.blue.edgesIgnoringSafeArea(.all)
            VStack{
                VStack{
                    HStack{
                        Text("Create new account.")
                            .bold()
                            .foregroundColor(.blue)
                            .font(.system(size: 35))
                        Spacer()
                    }
                    .padding()
                }
                .frame(width: .infinity, height: 100, alignment: .center)
                .background(.white)
                
                Spacer().frame(height: 90)
                
                Circle()
                    .frame(width: 80, height: 80)
                    .foregroundColor(.green)
                
                Spacer().frame(height: 80)
                
                VStack{
                    CustomTextFieldView(text: $userName, iconName: "person.fill", placeholder: "Enter your user name", isSecure: false)
                    CustomTextFieldView(text: $pass, iconName: "lock.fill", placeholder: "Enter your password", isSecure: true)
                    CustomTextFieldView(text: $pass, iconName: "lock.fill", placeholder: "Repeat password", isSecure: true)
                    HStack{
                        Text("Male")
                            .padding(.leading, 20)
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
                    .font(.system(size: 23))
                    .foregroundColor(.white)
                    
                    .padding(.leading, 80)
                }
                
                Spacer().frame(height: 50)
                
                Button {
                    
                } label: {
                    Text("Sign Up")
                        .font(.system(size: 20))
                        .bold()
                        .foregroundColor(.blue)
                        .padding()
                        .padding(.horizontal, 20)
                        .background(.white)
                        .cornerRadius(30)
                }
                
                Spacer()
                
                HStack{
                    Text("You have account?")
                    Text("Log In")
                        .bold()
                        .foregroundColor(.white)
                        .onTapGesture {
                            presentationMode.wrappedValue.dismiss()
                        }
                }
            }
        }
        .navigationBarHidden(true)
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            SignUpView()
        }
        
    }
}
