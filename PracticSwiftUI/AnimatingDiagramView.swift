//
//  AnimatingDiagramView.swift
//  PracticSwiftUI
//
//  Created by Oleg Ten on 3/10/20.
//  Copyright © 2020 Oleg Ten. All rights reserved.
//

import SwiftUI

struct AnimatingDiagramView: View {
    
    @State private var PickerSelectedItem = 0
    @State private var dataPoins:[[CGFloat]] = [[20,40,30,50,70],
                                                [40,50,30,90,40],
                                                [120,30,30,110,70],
                                                [40,40,130,0,40]]
    
    var body: some View {
        ZStack{
            Color(#colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)).edgesIgnoringSafeArea(.all)
            VStack{
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Picker(selection: $PickerSelectedItem, label: Text("")){
                    Text("Item1").tag(0)
                    Text("Item2").tag(1)
                    Text("Item3").tag(2)
                    Text("Item4").tag(3)
                }.pickerStyle(SegmentedPickerStyle())
                HStack{
                    CapsulView(value: dataPoins[PickerSelectedItem][0])
                    CapsulView(value: dataPoins[PickerSelectedItem][1])
                    CapsulView(value: dataPoins[PickerSelectedItem][2])
                    CapsulView(value: dataPoins[PickerSelectedItem][3])
                    CapsulView(value: dataPoins[PickerSelectedItem][4])
                    
                }.padding(.horizontal,24)
                    .animation(.default)
            }
        }
    }
}

struct CapsulView: View {
    
    var value: CGFloat
    
    var body: some View{
        
        VStack{
            ZStack(alignment: .bottom){
                Capsule().frame(width: 20, height: 200)
                    .foregroundColor(.green)
                Capsule().frame(width: 20, height: value)
                    .foregroundColor(.white)
            }
            Text("day")
        }
    }
}

struct AnimatingDiagramView_Previews: PreviewProvider {
    static var previews: some View {
        AnimatingDiagramView()
    }
}
