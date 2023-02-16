//
//  MQTTTextField.swift
//  MySchoolAssistant_start
//
//  Created by EdwImac03 on 2023-02-16.
//

import SwiftUI

struct MQTTTextField: View {
    var placeHolderMessage: String
    var isDisabled: Bool
    @Binding var message: String
    var body: some View {
        TextField(placeHolderMessage, text: $message)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .font(.body)
            .disableAutocorrection(true)
            .disabled(isDisabled)
            .opacity(isDisabled ? 0.5 : 1.0)
    }
}

struct MQTTTextField_Previews: PreviewProvider {
    static var previews: some View {
        MQTTTextField(placeHolderMessage: "Hello", isDisabled: true, message: .constant("hello"))
    }
}

