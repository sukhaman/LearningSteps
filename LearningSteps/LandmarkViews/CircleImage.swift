//
//  CircleImage.swift
//  LearningSteps
//
//  Created by SP Singh on 4/16/20.
//  Copyright © 2020 Sukhaman Singh. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    
    var image: Image
    var body: some View {
        image
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white,
                                     lineWidth: 2))
        .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: landmarkData[2].image)
    }
}
