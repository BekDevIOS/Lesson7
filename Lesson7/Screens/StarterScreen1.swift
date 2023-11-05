//
//  StarterScreen1.swift
//  Lesson7
//
//  Created by Utkirbek Mekhmonboev on 11/2/23.
//

import SwiftUI

struct StarterScreen1: View {
    @EnvironmentObject var status: Status
    
    var body: some View {
        VStack{
            if self.status.userId != nil{
                HomeScreen1()
            }else{
               SginInScreen1()
            }
        }
        .onAppear{
            status.listen()
        }
    }
}

#Preview {
    StarterScreen1()
}
