//
//  Status.swift
//  Lesson7
//
//  Created by Utkirbek Mekhmonboev on 11/2/23.
//

import Foundation
import Combine

class Status: ObservableObject{
    var didChange = PassthroughSubject<Status, Never>()
    @Published var userId: String?
    
    func listen(){
        if let userId = UserDefaults.standard.string(forKey: "userId") {
            self.userId = userId
        } else {
            self.userId = nil
        }
    }
}
