//
//  LoginView.swift
//  Social_Network
//
//  Created by TranHao on 04/04/2024.
//

import SwiftUI

struct LoginView: View {
    @State private var userName: String = ""
    @State private var pass: String = ""
    var body: some View {
        ZStack{
            Color.blue.edgesIgnoringSafeArea(.all)
            VStack{
                VStack{
                    HStack{
                        Text("Wellcome to HRs app.")
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
                }
                HStack{
                    Spacer()
                    Text("Forgot password?")
                        .underline()
                        .padding(.horizontal, 30)
                        .foregroundColor(.white)
                    
                }
                
                Spacer().frame(height: 50)
                
                Button {
                    
                } label: {
                    Text("Log In")
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
                    Text("You don't have account?")
                    NavigationLink {
                        
                    } label: {
                        Text("Sign Up")
                            .bold()
                            .foregroundColor(.white)
                    }
                    
                }
            }
        }
        .navigationBarHidden(true)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            LoginView()
        }
    }
}
