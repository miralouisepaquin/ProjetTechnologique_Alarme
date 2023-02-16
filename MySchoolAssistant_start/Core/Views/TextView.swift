//
//  TextView.swift
//  MySchoolAssistant_start
//
//  Created by EdwImac03 on 2023-02-16.
//

import SwiftUI

struct MessageHistoryTextView: UIViewRepresentable {
    @Binding var text: String
    
    func makeUIView(context: Context) -> UITextView {
        let textView = UITextView()
        
        textView.autocapitalizationType = .sentences
        textView.isSelectable = true
        textView.isUserInteractionEnabled = false
        textView.font = UIFont.systemFont(ofSize: 14.0)
        
        return textView
    }
    
    func updateUIView(_ uiView: UITextView, context: Context) {
        uiView.text = text
        let myRange = NSMakeRange(uiView.text.count - 1, 0)
        uiView.scrollRangeToVisible(myRange)
    }
}
