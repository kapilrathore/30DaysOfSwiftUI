//
//  ContentView.swift
//  30DaysOfSwiftUI
//
//  Created by kapilrathore-mbp on 04/06/20.
//  Copyright © 2020 Kapil Rathore. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var toggle = true
    @State var pickerValue = ""
    @State var selectedDate = Date()
    @State var asdsd: CGFloat = 123
    var body: some View {
        
        Button("Tap Me", action: {
            print("Button Tap")
        })
        
//        Button(action: { print("Button Tap") }) {
//            Text("Tap Me").font(.largeTitle)
//        }
//        .buttonStyle(BorderlessButtonStyle())
        
//        NavigationLink("Goto Next", destination: EmptyView())
        
//        EditButton()
        
//        Toggle("Toggle", isOn: self.$toggle)
//        Toggle.init(isOn: self.$toggle) {
//            Text("Toggle")
//        }
        
//        Picker("Pick One", selection: self.$pickerValue) {
//            Text("Pick 1")
//            Text("Pick 2")
//            Text("Pick 3")
//        }.pickerStyle(SegmentedPickerStyle())
        
//        Stepper("Test", value: self.$asdsd)
        
//        Slider(value: self.$asdsd, in: ClosedRange(uncheckedBounds: (0,5)), step: 2) { change in
//
//        }
        
//        DatePicker("Pick Date", selection: self.$selectedDate, in: ClosedRange(uncheckedBounds: (Date().addingTimeInterval(1), Date().addingTimeInterval(1000))))
//            .datePickerStyle(WheelDatePickerStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
