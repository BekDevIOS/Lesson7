//
//  SginUpScreen1.swift
//  Lesson7
//
//  Created by Utkirbek Mekhmonboev on 11/2/23.
//

import SwiftUI

struct SginUpScreen1: View {
    @Environment(\.presentationMode) var presentation
    
    @State var firstname = ""
    @State var lastname = ""
    @State var email = ""
    @State var address = ""
    @State var password = ""
    var body: some View {
        VStack{
            Spacer()
            TextField("Firstname", text: $firstname)
                .frame(height: 45).padding(.leading, 10)
                .background(Color.gray.opacity(0.2)).cornerRadius(45)
            TextField("Lastname", text: $lastname)
                .frame(height: 45).padding(.leading, 10)
                .background(Color.gray.opacity(0.2)).cornerRadius(45)
            TextField("Email", text: $email)
                .frame(height: 45).padding(.leading, 10)
                .background(Color.gray.opacity(0.2)).cornerRadius(45)
            TextField("Address", text: $address)
                .frame(height: 45).padding(.leading, 10)
                .background(Color.gray.opacity(0.2)).cornerRadius(45)
            SecureField("Password", text: $password)
                .frame(height: 45).padding(.leading, 10)
                .background(Color.gray.opacity(0.2)).cornerRadius(45)
            Button(action: { }, label: {
                Spacer()
                Text("Sgin Up").foregroundColor(.white)
                Spacer()
            }).frame(height: 45).background(Color.red).cornerRadius(45)
            Spacer()
            HStack{
                Text("Already have an account?").foregroundColor(.blue)
                Button(action: {presentation.wrappedValue.dismiss() }, label: { Text("Sgin In")}).font(.system(size: 18))
                    .navigationBarHidden(true)
            }
        }.padding()
    }
}

#Preview {
    SginUpScreen1()
}
