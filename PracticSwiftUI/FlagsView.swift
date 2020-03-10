//
//  FlagsView.swift
//  PracticSwiftUI
//
//  Created by Oleg Ten on 3/7/20.
//  Copyright © 2020 Oleg Ten. All rights reserved.
//

import Combine
import SwiftUI

struct FlagsView: View {
    
    @State private var flags = ["turkey",
                                "yemen",
                                "uk",
                                "usa",
                                "south-korea",
                                "russia",
                                "japan",
                                "brazil",
                                "germany",
                                "china",
                                "kyrgyzstan",
                                "kazakhstan"].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)
    @State private var score = 0
    @State private var alertTitle = ""
    @State private var isShowAlert = false
    
    var body: some View {
        
        GeometryReader { geometry in
            VStack(alignment: .center, spacing: 16.0){
                
                Text("Choose \(self.flags[self.correctAnswer].uppercased())")
                
                ForEach(0...2, id: \.self) { (number) in
                    
                    Image(self.flags[number])
                        .resizable()
                        .frame(width: geometry.size.width - 60
                            , height: (geometry.size.width - 60) / 2.5 )
                        //.aspectRatio(0.5, contentMode: .fit)
                        .clipped()
                        .border(Color.black, width: 1)
                        .onTapGesture {
                            self.flagTapped(number)
                    }
                }
                Spacer()
                   
            } .navigationBarTitle(Text("GAME"), displayMode: .inline)
        }
            
        .alert(isPresented: $isShowAlert) {
            Alert(title: Text(alertTitle), message: Text("You score: \(score)"), dismissButton: .default(Text("Continue"), action: {
                self.askQuestion()
            }))
        }
    }
    
    func flagTapped(_ tag: Int) {
        
        if tag == correctAnswer{
            score += 1
            alertTitle = "Correct"
        }else{
            score -= 1
            alertTitle = "Wrong"
        }
        isShowAlert = true
    }
    
    func askQuestion(){
        flags.shuffle()
        correctAnswer = Int.random(in: 0...2)
        
    }
}

struct FlagsView_Previews: PreviewProvider {
    static var previews: some View {
        FlagsView()
    }
}
