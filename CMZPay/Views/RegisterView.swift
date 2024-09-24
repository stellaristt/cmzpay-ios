//
//  RegisterView.swift
//  CMZPay
//
//  Created by Rohsyam Sidik on 26/09/24.
//

import SwiftUI

struct RegisterView: View {
    @State private var username = ""
    @State private var email = ""
    @State private var password = ""
    @State private var phone_number = ""
    
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: "https://plus.unsplash.com/premium_vector-1711987768568-d2d79c8e0d07?q=80&w=2476&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")) { image in
                image.resizable()
            } placeholder: {
                ProgressView()
            }
            .frame(height: 300)
            .edgesIgnoringSafeArea(.top)
            
            ZStack {
                RoundedRectangle(cornerRadius: 30)
                    .foregroundColor(.white)
                    .frame(width: 350, height: 200)
                    .offset(x: 0, y: -200)
                    .padding(.bottom, -200)
                    .layoutPriority(1)
                    .shadow(radius: 5, y: 2)
                
                VStack {
                    Text("Daftar akun baru ke CMZPay")
                        .font(.title)
                        .bold()
                        .multilineTextAlignment(.center)
                        .fixedSize(horizontal: false, vertical: true)
                    
                    Text("Pastikan tidak ada orang lain yang memiliki akses untuk mencegah penipuan.")
                        .font(.callout)
                        .padding(1)
                        .multilineTextAlignment(.center)
                        .fixedSize(horizontal: false, vertical: true)
                    
                }
                .frame(width: 350, height: 200)
                .offset(x: 0, y: -200)
                .padding(.bottom, -200)
                .padding([.leading, .trailing], 80)
            }
            
            VStack(alignment: .leading, content: {
                Text("Masukkan username")
                    .font(.headline)
                    .padding(.leading, 15)
                TextField("Contoh: bagonkhitut", text: $username)
                    .padding(.leading, 15)
                    .overlay(
                        Rectangle()
                            .frame(height: 1)
                            .foregroundColor(Color.black)
                            .offset(y: 20)
                    )
                Text("Masukkan email")
                    .font(.headline)
                    .padding(.top)
                    .padding(.leading, 15)
                TextField("Contoh: bagonkhitut@cmzpay", text: $email)
                    .padding(.leading, 15)
                    .overlay(
                        Rectangle()
                            .frame(height: 1)
                            .foregroundColor(Color.black)
                            .offset(y: 20)
                    )
                
                Text("Masukkan password")
                    .font(.headline)
                    .padding(.top)
                    .padding(.leading, 15)
                SecureField("*************", text: $password)
                    .padding(.leading, 15)
                    .overlay(
                        Rectangle()
                            .frame(height: 1)
                            .foregroundColor(Color.black)
                            .offset(y: 20)
                    )
                Text("Masukkan nomor HP")
                    .font(.headline)
                    .padding(.top)
                    .padding(.leading, 15)
                TextField("Contoh: 085xxxxxxxxxx", text: $phone_number)
                    .padding(.leading, 15)
                    .overlay(
                        Rectangle()
                            .frame(height: 1)
                            .foregroundColor(Color.black)
                            .offset(y: 20)
                    )
            })
            .padding()
            
            Button(action: {
            }) {
                Text("Lanjut")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color(red: 20/255, green: 113/255, blue: 248/255))
                    .cornerRadius(8)
            }
            .padding()
            
            Button(action: {
            }) {
                Text("Belum punya akun? Daftar disini!")
            }
            .padding()
            
            
            Spacer()
        }
        .background(Color(red: 245/255, green: 245/255, blue: 245/255))
    }
}

#Preview {
    RegisterView()
}
