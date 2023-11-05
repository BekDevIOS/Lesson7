//
//  HomeScreen.swift
//  Lesson7
//
//  Created by Utkirbek Mekhmonboev on 11/2/23.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        NavigationView{
            VStack{
                Button(action: {
                    UserDefaults.standard.set(false, forKey: "status")
                    NotificationCenter.default.post(name: NSNotification.Name("status"), object: nil)
                }, label: { Text("Logout")})
            }
        .navigationBarItems(leading: Image(systemName: "camera"), trailing: Image(systemName: "location"))
        .navigationTitle("Instagram")
        .navigationBarTitleDisplayMode(.inline)
        }
    }
}
#Preview {
    HomeScreen()
}
