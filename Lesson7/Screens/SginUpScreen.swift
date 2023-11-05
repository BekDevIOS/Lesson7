//
//  SginUpScreen.swift
//  Lesson7
//
//  Created by Utkirbek Mekhmonboev on 11/2/23.
//

import SwiftUI

struct SginUpScreen: View {
    @Environment(\.presentationMode) var presentation
    
    @State var fullname = ""
    @State var email = ""
    @State var phone = ""
    @State var password = ""
    var body: some View {
        VStack{
            Spacer()
            Text("Instagram")
                .font(.system(size: 30))
            TextField("Fullname", text: $fullname)
                .frame(height: 45).padding(.leading, 10)
                .background(Color.gray.opacity(0.2)).cornerRadius(45)
            TextField("Email", text: $email)
                .frame(height: 45).padding(.leading, 10)
                .background(Color.gray.opacity(0.2).cornerRadius(45))
            TextField("Phone", text: $phone)
                .frame(height: 45).padding(.leading, 10)
                .background(Color.gray.opacity(0.2)).cornerRadius(45)
            SecureField("Password", text: $password)
                .frame(height: 45).padding(.leading, 10)
                .background(Color.gray.opacity(0.2)).cornerRadius(45)
            Button(action: { }, label: {
                Spacer()
                Text("Sgin Up").foregroundColor(.white)
                Spacer()}
            ).frame(height: 45).background(Color.blue).cornerRadius(45)
            Spacer()
            HStack{
                Text("Already have an account?")
                Button(action: {presentation.wrappedValue.dismiss() }, label: { Text("Sgin In").font(.system(size: 18)).foregroundColor(.black)})
                    .navigationBarBackButtonHidden(true)
            }
        }.padding()
    }
}

#Preview {
    SginUpScreen()
}
