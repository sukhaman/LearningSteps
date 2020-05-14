//
//  LandmarkList.swift
//  LearningSteps
//
//  Created by SP Singh on 4/16/20.
//  Copyright © 2020 Sukhaman Singh. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    
   @EnvironmentObject private var userData: UserData
    
   var body: some View {
            NavigationView {
                
                List {
                    Toggle(isOn: $userData.showFavoritesOnly) {
                        Text("Show Favorites")
                    }
                    ForEach(userData.landmarks) {
                        landmark in
                        if !self.userData.showFavoritesOnly  || landmark.isFavorite {
                        NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                        
                        LandmarkRow(landmark: landmark)
                        }
                        }
                        
                    }
                }
                .navigationBarTitle(Text("Landmarks"))
            }
        }
    }

    struct LandmarkList_Previews: PreviewProvider {
        static var previews: some View {
            ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
                        LandmarkList()
                    .environmentObject(UserData())
                    .previewDevice(PreviewDevice(rawValue: deviceName))
                    .previewDisplayName(deviceName)
            }
        }
    }
