////
////  DataList.swift
////  LearningSteps
////
////  Created by SP Singh on 4/15/20.
////  Copyright © 2020 Sukhaman Singh. All rights reserved.
////
//
//import SwiftUI
//
//struct DataList: View {
//
//    
//    var body: some View {
//        
//        VStack {
//            
//            
//            
//            VStack(alignment: .leading) {
//                HStack {
//                    Text(landmark.name)
//                    .font(.title)
//                    Button(action: {
//                        self.userData.landmarks[self.landmarkIndex].isFavorite.toggle()
//                    }) {
//                        if userData.landmarks[self.landmarkIndex].isFavorite {
//                            Image(systemName: "star.fill")
//                                .foregroundColor(.yellow)
//                        }
//                        else {
//                            Image(systemName: "star")
//                                .foregroundColor(.gray)
//                        }
//                    }
//                }
//                
//                HStack {
//                    
//                    Text(landmark.park)
//                        .font(.subheadline)
//                    Spacer()
//                    Text(landmark.state)
//                        .font(.subheadline)
//                }
//            }.padding()
//            Spacer()
//        }
//    }
//}
//
//struct DataList_Previews: PreviewProvider {
//    static var previews: some View {
//        DataList(landmark: landmarkData[0])
//        .environmentObject(UserData())
//    }
//}
