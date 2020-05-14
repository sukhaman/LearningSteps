////
////  LandmarkDetail.swift
////  LearningSteps
////
////  Created by SP Singh on 4/16/20.
////  Copyright © 2020 Sukhaman Singh. All rights reserved.
////
//
import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
      @EnvironmentObject var userData: UserData
     var landmarkIndex: Int {
         userData.landmarks.firstIndex(where: { $0.id == landmark.id })!
     }
     var body: some View {
         
         VStack {
             MapView(coordinate: landmark.locationCoordinate)
                 .frame(height: 300)
                 .edgesIgnoringSafeArea(.top)
             
             CircleImage(image: landmark.image)
                 .offset(y:-130)
                 .padding(.bottom, -130)
             VStack(alignment: .leading) {
                 HStack {
                     Text(landmark.name)
                     .font(.title)
                     Button(action: {
                         self.userData.landmarks[self.landmarkIndex].isFavorite.toggle()
                     }) {
                         if userData.landmarks[self.landmarkIndex].isFavorite {
                             Image(systemName: "star.fill")
                                 .foregroundColor(.yellow)
                         }
                         else {
                             Image(systemName: "star")
                                 .foregroundColor(.gray)
                         }
                     }
                 }
                 
                 HStack {
                     
                     Text(landmark.park)
                         .font(.subheadline)
                     Spacer()
                     Text(landmark.state)
                         .font(.subheadline)
                 }
             }.padding()
             Spacer()
         }
     }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarkData[0])
        .environmentObject(UserData())
    }
}
