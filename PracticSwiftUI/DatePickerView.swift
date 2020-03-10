//
//  DatePickerView.swift
//  PracticSwiftUI
//
//  Created by Oleg Ten on 3/9/20.
//  Copyright © 2020 Oleg Ten. All rights reserved.
//

import SwiftUI

struct DatePickerView: View {
    
    @State private var wakeUp = Date()
    
    var body: some View {
        
        Form{
            Section{
                VStack(alignment: .leading, spacing: 0){
                    Text("DatePicker")
                    DatePicker("datePickerName", selection: $wakeUp)
                        .datePickerStyle(WheelDatePickerStyle())
            }
        }
        //Date without title
        Section{
            DatePicker("datePickerName", selection: $wakeUp)
                .labelsHidden()
        }
        Section{
            DatePicker("datePickerName", selection: $wakeUp, displayedComponents: .hourAndMinute)
        }
        //Date from now
        Section{
            DatePicker("datePickerName", selection: $wakeUp, in: Date()...)
            }
            
            
        }
        
    }
}
    
    struct DatePickerView_Previews: PreviewProvider {
        static var previews: some View {
            DatePickerView()
        }
}
