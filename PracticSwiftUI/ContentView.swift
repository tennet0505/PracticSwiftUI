//
//  ContentView.swift
//  PracticSwiftUI
//
//  Created by Oleg Ten on 3/6/20.
//  Copyright © 2020 Oleg Ten. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
  
     @State private var firstItem = ""
    
    var body: some View {
        
        NavigationView(){
            Form{
// TextField binding to Text
                Section(header: Text("HEADER"),footer: Text("FOOTER")){
                    TextField("Placeholer", text: $firstItem){
                    }
                    Text("Text fromPlaceholder: \(firstItem)")
                }
                
                Section{
                    NavigationLink(destination: Pickers()) {
                        Text("Pickers view")
                    }
                    NavigationLink(destination: Alerts()) {
                        Text("Alert view")
                    }
                    NavigationLink(destination: StepperView()) {
                        Text("Stepper view")
                    }
                    NavigationLink(destination: DatePickerView()) {
                        Text("DatePicker view")
                    }
                }
                Section{
                    NavigationLink(destination: FlagsView()) {
                        Text("Flags game view")
                    }
                }
                Section{
                    NavigationLink(destination: AnimatingDiagramView()) {
                        Text("AnimatingDiagram view")
                    }
                }
                .navigationBarTitle(Text("Title"), displayMode: .large)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
