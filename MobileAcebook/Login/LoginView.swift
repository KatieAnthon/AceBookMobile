//
//  LoginView.swift
//  MobileAcebook
//
//  Created by Marcela Moreti on 20/02/2024.
//

import SwiftUI

struct LoginView: View {
    @State var email = ""
    @State var password = ""
    @State var isLoggedIn = false
    @ObservedObject var loginViewModel = LoginViewModel()
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .center) {
                Color("backgroudBlue")
                
                VStack(spacing: 80) {
                    Spacer()
                        .frame(height: 10)
                    
                    Image("acebookLogo")
                        .resizable()
                        .frame(width: 100, height: 100)
                    
                    
                    VStack(spacing: 30){
                        
                        
                        
                        VStack {
                            
                            ZStack {
                                Rectangle()
                                    .fill(Color("darkBlueButton"))
                                    .frame(width: 365, height: 60)
                                    .cornerRadius(10)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color("grayBorder"), lineWidth: 1)
                                    )
                                TextField("Email", text: $email)
                                    .keyboardType(.emailAddress)
                                    .frame(width: 320, height: 60)
                                    .textInputAutocapitalization(.never)
                                    .foregroundColor(Color("white"))
                                    .padding(.horizontal, 10)
                            }
                            
                            
                            ZStack {
                                Rectangle()
                                    .fill(Color("darkBlueButton"))
                                    .frame(width: 365, height: 60)
                                    .cornerRadius(10)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color("grayBorder"), lineWidth: 1)
                                    )
                                SecureField("Password", text: $password)
                                    .textInputAutocapitalization(.never)
                                    .frame(width: 320, height: 40)
                                    .foregroundColor(Color("white"))
                                    .padding(.horizontal, 10)
                            }
                            
                            NavigationLink(destination: Text("Form to refresh password")){
                                Text("Forgotten password?")
                                
                            }
                            
                            
                        }
                        
                        VStack(spacing: 10) {
                            
                            
                            NavigationLink(isActive: $isLoggedIn) {
                                Text("Logado")
                            } label: {
                                VStack {
                                    Button {
                                        Task {
                                            isLoggedIn = await loginViewModel.login(email: email, password: password)
                                        }
                                    } label: {
                                        Text("Log in")
                                            .frame(width: 300, height: 20)
                                            .foregroundColor(Color("white"))
                                            .font(.title2)
                                            .padding()
                                            .background(Color("facebookBlue"))
                                            .clipShape(Capsule())
                                    }
                                    
                                    
                                    
                                }
                            }
                            NavigationLink(destination: Text("Signup")) {
                                Text("Create new accoutn")
                                    .frame(width: 300, height: 20)
                                    .foregroundColor(Color("facebookBlue"))
                                    .font(.title2)
                                    .padding()
                                    .background(Color("backgroudBlue"))
                                    .clipShape(Capsule())
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 50)
                                            .stroke(Color("facebookBlue"), lineWidth: 1)
                                    )
                                
                                
                            }
                        }
                        
                    }
                    
                }
            }
            .navigationBarHidden(true)
            .ignoresSafeArea()
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}



