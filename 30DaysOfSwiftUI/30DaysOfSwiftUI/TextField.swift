//
//  TextField.swift
//  30DaysOfSwiftUI
//
//  Created by kapilrathore-mbp on 04/06/20.
//  Copyright © 2020 Kapil Rathore. All rights reserved.
//

import SwiftUI

struct TextFieldContentView: View {
    @State var input: String = ""
    var body: some View {
        TextField("Username", text: self.$input)
            .textFieldStyle(PlainTextFieldStyle())

//        SecureField("Password", text: self.$input)
//            .textFieldStyle(RoundedBorderTextFieldStyle())
    }
}

struct TextFieldContentView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldContentView()
    }
}
