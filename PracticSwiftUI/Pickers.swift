//
//  Pickers.swift
//  PracticSwiftUI
//
//  Created by Oleg Ten on 3/9/20.
//  Copyright © 2020 Oleg Ten. All rights reserved.
//

import SwiftUI

struct Pickers: View {
    
    @State private var items = ["item1", "item2", "item3", "item4", "item5"]
    @State private var selection = 0
    
    
    var body: some View {
        
        Form{
            //Picker View1                //Open new controller
            Section{
                Picker("Item select:", selection: $selection) {
                    ForEach(0 ..< items.count){
                        
                        Text("\(self.items[$0])")
                        
                    }
                }
            }
            //Picker View2                //WheelPickerStyle
            Section{
                Picker("Item select:", selection: $selection) {
                    ForEach(0 ..< items.count){
                        
                        Text("\(self.items[$0])")
                        
                    }
                }
                .pickerStyle(WheelPickerStyle())
            }
            //Picker View3                //SegmentedPickerStyle
            Section{
                Picker("Item select:", selection: $selection) {
                    ForEach(0 ..< items.count){
                        
                        Text("\(self.items[$0])")
                        
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
            }
            .navigationBarTitle(Text("Pickers"), displayMode: .automatic)
        }
    }
}

struct Pickers_Previews: PreviewProvider {
    static var previews: some View {
        Pickers()
    }
}
