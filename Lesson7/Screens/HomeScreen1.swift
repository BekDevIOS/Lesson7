//
//  HomeScreen1.swift
//  Lesson7
//
//  Created by Utkirbek Mekhmonboev on 11/2/23.
//

import SwiftUI

struct HomeScreen1: View {
    @EnvironmentObject var status: Status
    var body: some View {
        NavigationView{
            VStack{
                Button(action: {
                    UserDefaults.standard.removeObject(forKey: "userId")
                    status.listen()
                }, label: { Text("Logout")})
            }
            .navigationBarItems(leading: Image(systemName: "camera"), trailing: Image(systemName: "location"))
            .navigationTitle("Instagram")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    HomeScreen1()
}
