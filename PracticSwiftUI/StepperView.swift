//
//  Stepper.swift
//  PracticSwiftUI
//
//  Created by Oleg Ten on 3/9/20.
//  Copyright © 2020 Oleg Ten. All rights reserved.
//

import SwiftUI

struct StepperView: View {
    
    @State private var sleepAmount = 8.0
    
    var body: some View {
        Form{
            Stepper(value: $sleepAmount, in: 1...12, step: 0.25){
                Text("Hours: \(sleepAmount, specifier: "%g")")
            }
        }
    }
}

struct StepperView_Previews: PreviewProvider {
    static var previews: some View {
        StepperView()
    }
}
