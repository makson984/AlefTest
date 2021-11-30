//
//  BlockTextField.swift
//  AlefTest
//
//  Created by Максим Штанников on 29.11.2021.
//

import SwiftUI

struct BlockTextField: View {
  
  let title: String
  @Binding var text: String
  let keyboardType: UIKeyboardType
  
  var body: some View {
    VStack(spacing: 4) {
      HStack {
        Text(title)
          .fontWeight(.light)
          .foregroundColor(.gray)
        Spacer()
      }
      HStack {
        TextField("введите...", text: $text)
          .font(Font.system(size: 20, weight: .light, design: .rounded))
          .disableAutocorrection(true)
          .keyboardType(keyboardType)
        Spacer()
      }
    }
    .padding()
    .overlay(
      RoundedRectangle(cornerRadius: 5)
        .stroke(lineWidth: 0.3)
    )
  }
}
