//
//  SginInScreen1``.swift
//  Lesson7
//
//  Created by Utkirbek Mekhmonboev on 11/2/23.
//

import SwiftUI

struct SginInScreen1: View {
    @EnvironmentObject var status: Status
    
    @State var userId = ""
    @State var userPw = ""
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
                TextField("UserID", text: $userId)
                    .frame(height: 45).padding(.leading, 10)
                    .background(Color.gray.opacity(0.2)).cornerRadius(45)
                SecureField("UserPW", text: $userPw)
                    .frame(height: 45).padding(.leading, 10)
                    .background(Color.gray.opacity(0.2)).cornerRadius(45)
                Button(action: {
                    UserDefaults.standard.set("PDP", forKey: "userId")
                    status.listen()
                }, label: {
                    Spacer()
                    Text("Sgin In").foregroundColor(.white)
                    Spacer()
                }
                ).frame(height: 45).background(Color.red).cornerRadius(45)
                Spacer()
                HStack{
                    Text("Don't have an account?").foregroundColor(.blue)
                    NavigationLink("Sgin Up", destination: SginUpScreen1())
                }
            }.padding()
        }
    }
}

#Preview {
    SginInScreen1()
}
