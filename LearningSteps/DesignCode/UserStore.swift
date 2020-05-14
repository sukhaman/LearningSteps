//
//  UserStore.swift
//  LearningSteps
//
//  Created by SP Singh on 5/13/20.
//  Copyright © 2020 Sukhaman Singh. All rights reserved.
//

import SwiftUI
import Combine
class UserStore: ObservableObject {
    @Published var isLogged: Bool = UserDefaults.standard.bool(forKey: "isLogged") {
        didSet {
            UserDefaults.standard.set(self.isLogged, forKey: "isLogged")
        }
    }
    @Published var showLogin = false
}
