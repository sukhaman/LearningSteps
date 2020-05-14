//
//  UpdateDetail.swift
//  LearningSteps
//
//  Created by SP Singh on 4/19/20.
//  Copyright © 2020 Sukhaman Singh. All rights reserved.
//

import SwiftUI

struct UpdateDetail: View {
    var update: Update = updateData[3]
    
    var body: some View {
        List {
            VStack(spacing: 20) {
                Image(update.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                
                 Text(update.text)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .navigationBarTitle(update.title)
        }
    .listStyle(PlainListStyle())
    }
}

struct UpdateDetail_Previews: PreviewProvider {
    static var previews: some View {
        UpdateDetail()
    }
}
