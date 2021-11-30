//
//  RoundedButton.swift
//  AlefTest
//
//  Created by Максим Штанников on 29.11.2021.
//

import SwiftUI

struct RoundedButton: View {
  
  let text: String
  let imageName: String?
  let paddingHorizontal: CGFloat
  let action: () -> Void
  
  var body: some View {
    Button(action: action) {
      HStack {
        if let imageName = imageName {
          Image(systemName: imageName)
            .font(.title2)
        }
        Text(text)
          .font(Font.system(size: 18, weight: .light, design: .rounded))
      }
      .padding()
      .padding(.horizontal, paddingHorizontal)
      .overlay(
        RoundedRectangle(cornerRadius: 30)
          .stroke(lineWidth: 2.5)
      )
    }
  }
}
