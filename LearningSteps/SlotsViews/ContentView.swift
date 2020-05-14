//
//  ContentView.swift
//  LearningSteps
//
//  Created by SP Singh on 4/15/20.
//  Copyright © 2020 Sukhaman Singh. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var symbols = ["apple", "star", "cherry"]
    @State private var numbers = [2,0,0]
    @State private var backgrounds = [Color.white, Color.white, Color.white]
    @State private var credits = 1000
    private var betAmount = 5
    
    var body: some View {
        
        ZStack {
            
//            Background
            Rectangle()
            .foregroundColor(Color(red: 200/255, green: 143/255, blue: 32/255))
                .edgesIgnoringSafeArea(.all)
            
            Rectangle()
                .foregroundColor(Color(red: 228/255, green: 195/255, blue: 76/255)).rotationEffect(Angle(degrees: 45)).edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                HStack {
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    
                    Text("SwiftUI Slots")
                        .bold()
                        .foregroundColor(.white)
                    
                    Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
                }.scaleEffect(2)
                Spacer()
                Text("Credits: " + String(credits))
                    .foregroundColor(.black)
                    .padding(.all, 10)
                    .background(Color.white.opacity(0.5))
                .cornerRadius(20)
                Spacer()
                HStack {
                    
                    Spacer()
                    CardView1(symbol: $symbols[numbers[0]], background: $backgrounds[0])
                    CardView1(symbol: $symbols[numbers[1]], background: $backgrounds[1])
                    CardView1(symbol: $symbols[numbers[2]], background: $backgrounds[2])
                    
                    Spacer()
                }
                Spacer()
                Button(action: {
//                    TODO
//                    self.backgrounds[0] = Color.white
//                    self.backgrounds[1] = Color.white
//                    self.backgrounds[2] = Color.white
                    
                    self.backgrounds = self.backgrounds.map { _ in
                        Color.white
                    }
                    
                    self.numbers = self.numbers.map({ _ in
                        Int.random(in: 0...self.symbols.count - 1)
                    })
                    
                    if self.numbers[0] == self.numbers[1] && self.numbers[1] == self.numbers[2] {
                        
                        self.credits += self.betAmount * 10
                        
                        self.backgrounds = self.backgrounds.map { _ in
                            Color.green
                        }
                    }
                    
                    else {
                        self.credits -= self.betAmount
                    }
                    
                }) {
                    Text("Spin")
                    .bold()
                        .foregroundColor(.white)
                        .padding(.all, 10)
                        .padding([.leading, .trailing], 30)
                        .background(Color.pink)
                }
                Spacer()
                    
            }
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
