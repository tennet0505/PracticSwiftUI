//
//  Alerts.swift
//  PracticSwiftUI
//
//  Created by Oleg Ten on 3/9/20.
//  Copyright © 2020 Oleg Ten. All rights reserved.
//

import SwiftUI

struct Alerts: View {
    
    //for buttonAction
    @State private var isShowAlert = false
    
    var body: some View {
        Form(){
            Section{
                //Alert
                Button(action: {
                    self.isShowAlert = true
                }) {
                    Text("Show Action alert")
                }.alert(isPresented: $isShowAlert) {
                    
                    Alert(title: Text("Alert"), message: Text("Cool"), primaryButton: .default(Text("Ok")){  print(Text("click ok"))
                        }, secondaryButton: .cancel())
                }
//ActionSheet
                Button(action: {
                    self.isShowAlert = true
                }) {
                    Text("Show Action alert")
                }.actionSheet(isPresented: $isShowAlert) {
                    
                    ActionSheet(title: Text("ActionSheet"), message: Text("New Item"), buttons: [.cancel()])
                }
            }
            .navigationBarTitle(Text("Alerts"), displayMode: .large)
        }
    }
}

struct Alerts_Previews: PreviewProvider {
    static var previews: some View {
        Alerts()
    }
}
