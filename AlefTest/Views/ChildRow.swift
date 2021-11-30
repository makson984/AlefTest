//
//  ChildRow.swift
//  AlefTest
//
//  Created by Максим Штанников on 29.11.2021.
//

import SwiftUI

struct ChildRow: View {

  let child: Child
  let action: () -> Void
  
  var body: some View {
    HStack(spacing: 20) {
      VStack(spacing: 20) {
        infoBlock(title: "Имя", info: child.name)
        infoBlock(title: "Возраст", info: child.age)
      }
      VStack {
        Button(action: action) {
          Text("Удалить")
            .font(Font.system(size: 20, weight: .light, design: .rounded))
            .padding(.top, 20)
          Spacer()
        }
        Spacer()
      }
    }
    .padding(.vertical)
  }
  
  private func infoBlock(title: String, info: String) -> some View {
    VStack(spacing: 6) {
      HStack {
        Text(title)
          .fontWeight(.light)
          .foregroundColor(.gray)
        Spacer()
      }
      HStack {
        Text(info)
          .font(Font.system(size: 20, weight: .light, design: .rounded))
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
