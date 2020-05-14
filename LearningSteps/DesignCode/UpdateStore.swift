//
//  UpdateStore.swift
//  LearningSteps
//
//  Created by SP Singh on 4/19/20.
//  Copyright © 2020 Sukhaman Singh. All rights reserved.
//

import SwiftUI
import Combine

class UpdateStore: ObservableObject {
    @Published var updates: [Update] = updateData
    
}
