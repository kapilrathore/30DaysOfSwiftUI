//
//  Text.swift
//  30DaysOfSwiftUI
//
//  Created by kapilrathore-mbp on 04/06/20.
//  Copyright © 2020 Kapil Rathore. All rights reserved.
//

import SwiftUI

struct TextContentView: View {
    var body: some View {
        // MARK: Text - A view that displays one or more lines of read-only text.
        Text("Hello, World!")
        
//        // Adding Standard Fonts
//        return Text("Hello World!")
//            .font(.largeTitle) // Always pick the first only
//            .font(.title)
//            .font(.body)
        
        
//        // Adding Custom Fonts
//        return Text("Hello World!")
//            .font(Font.custom("Avenir", size: 24.0))
        
        
//        // Adding Styling
//        return Text("Hello World!")
//            .font(.title)
//            .fontWeight(.medium)
//            .foregroundColor(.blue)
//            .italic()
//            .bold()
//            .strikethrough(true, color: .red)
//            .underline(true, color: .orange)
//            .kerning(12)
//            .tracking(5)
//            .baselineOffset(100)
        
//        // Handling Multiline
//        return Text("Hello World! Hello World! Hello World! Hello World! Hello World!")
//            .lineLimit(2)
//            .lineSpacing(10)
        
//        // Combining Text
//        let text1 = Text("Hello")
//            .font(.title)
//            .foregroundColor(.red)
//            .underline()
//
//        let text2 = Text("World")
//            .font(.largeTitle)
//            .foregroundColor(.green)
//            .strikethrough()
//
//        return text1 + Text(" ") + text2 + Text("!")
        
//        // Equating Text
//        if Text("Test") == Text("Test") {
//            return Text("Equal")
//        } else {
//            return Text("Not Equal")
//        }
    }
}

struct TextContentView_Previews: PreviewProvider {
    static var previews: some View {
        TextContentView()
    }
}
