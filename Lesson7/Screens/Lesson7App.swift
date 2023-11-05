//
//  Lesson7App.swift
//  Lesson7
//
//  Created by Utkirbek Mekhmonboev on 11/2/23.
//

import SwiftUI

@main
struct Lesson7App: App {
    @ObservedObject var status = Status()
    var body: some Scene {
        WindowGroup {
            StarterScreen1().environmentObject(status)
        }
    }
}
