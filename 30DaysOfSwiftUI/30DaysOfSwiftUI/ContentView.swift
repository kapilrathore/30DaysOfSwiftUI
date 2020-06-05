//
//  ContentView.swift
//  30DaysOfSwiftUI
//
//  Created by kapilrathore-mbp on 04/06/20.
//  Copyright © 2020 Kapil Rathore. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var count = 0
    @State var stepCount = 1
    
    var body: some View {
        VStack {
            Text("\(self.count)")
                .font(Font.system(size: 64))
            
            HStack(alignment: .center, spacing: 32) {
                Button(
                    "+",
                    action: { self.count += self.stepCount }
                )
                Button(
                    "-",
                    action: { self.count -= self.stepCount }
                )
                Button(
                    "Reset",
                    action: { self.count = 0; self.stepCount = 1 }
                )
            }.font(.largeTitle)

            Stepper(
                "Step Count - \(self.stepCount)",
                value: self.$stepCount,
                in: ClosedRange(uncheckedBounds: (1,5))
            )
        }.padding(32)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
