//
//  SginInScreen.swift
//  Lesson7
//
//  Created by Utkirbek Mekhmonboev on 11/2/23.
//

import SwiftUI

struct SginInScreen: View {
    @State var isActive = false
    @State var email = ""
    @State var password = ""
    var body: some View {
        NavigationStack{
            VStack{
                Spacer()
               Image("proimage")
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .frame(width: 70, height: 70)
                    .cornerRadius(70)
                TextField("Email", text: $email)
                    .frame(height: 45).padding(.leading, 10)
                    .background(Color.gray.opacity(0.2)).cornerRadius(45)
                SecureField("Password", text: $password)
                    .frame(height: 45).padding(.leading, 10)
                    .background(Color.gray.opacity(0.2)).cornerRadius(45)
                Button(action: { 
                    UserDefaults.standard.set(true, forKey: "status")
                    NotificationCenter.default.post(name: NSNotification.Name("status"), object: nil)
                }, label: {
                    Spacer()
                    Text("Sgin In")
                        .foregroundColor(.white)
                    Spacer()}
                ).frame(height: 45)
                    .background(Color.blue).cornerRadius(45)
                Spacer()
                HStack{
                    Text("Don't have an account?")
                    Button(action: { self.isActive.toggle() }, label: { Text("Sgin Up").foregroundColor(.black)}).font(.system(size: 18))
                        .sheet(isPresented: $isActive, content: {
                            SginUpScreen()
                        })
                }
            }.padding()
        }
    }
}

#Preview {
    SginInScreen()
}
