//
//  CardView.swift
//  LearningSteps
//
//  Created by SP Singh on 4/15/20.
//  Copyright © 2020 Sukhaman Singh. All rights reserved.
//

import SwiftUI

struct CardView1: View {
    
    @Binding var symbol: String
    @Binding var background:Color
    
    
    var body: some View {
        Image(symbol)
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .background(background.opacity(0.5))
            .cornerRadius(20)
    }
}

struct CardView1_Previews: PreviewProvider {
    static var previews: some View {
        CardView1(symbol: Binding.constant("cherry"), background: Binding.constant(Color.green))
    }
}
