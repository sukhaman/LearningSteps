//
//  DataStore.swift
//  LearningSteps
//
//  Created by SP Singh on 4/20/20.
//  Copyright © 2020 Sukhaman Singh. All rights reserved.
//

import SwiftUI
import Combine

class DataStore: ObservableObject {
    @Published var posts: [Post] = []
    
    init() {
        getPost()
    }
    
    func getPost() {
        Api().getPosts { (posts) in
            self.posts = posts
        }
    }
}
