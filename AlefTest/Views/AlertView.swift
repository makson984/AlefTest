//
//  AlertView.swift
//  AlefTest
//
//  Created by Максим Штанников on 29.11.2021.
//

import SwiftUI

struct AlertView: View {
  
  @EnvironmentObject var viewModel: MainViewModel

  var body: some View {
    VStack {
      HStack {
        Text("Добавить ребёнка")
          .font(Font.system(size: 20, weight: .regular, design: .default))
        Spacer()
      }
      Spacer()
      BlockTextField(title: "Имя", text: $viewModel.childName, keyboardType: .default)
      BlockTextField(title: "Возраст", text: $viewModel.childAge, keyboardType: .numberPad)
      Spacer()
      HStack {
        RoundedButton(text: "Отменить", imageName: nil, paddingHorizontal: 0) {
          withAnimation { viewModel.isShowDetail = false }
        }
          .foregroundColor(.red)
        Spacer()
        RoundedButton(text: "Добавить", imageName: nil, paddingHorizontal: 0) {
          withAnimation { viewModel.addChild() }
        }
          .disabled(viewModel.childName.isEmpty || viewModel.childAge.isEmpty)
      }
    }
    .padding()
    .frame(width: width, height: height, alignment: .center)
    .background(
      RoundedRectangle(cornerRadius: cornerRadius)
        .stroke(lineWidth: lineWidth)
        .foregroundColor(.gray)
    )
      .opacity(viewModel.isShowDetail ? 1 : 0)
  }
  
  private var width: CGFloat { UIScreen.main.bounds.width * 0.75 }
  private var height: CGFloat { UIScreen.main.bounds.height * 0.5 }
  private let cornerRadius: CGFloat = 10
  private let lineWidth: CGFloat = 2
}
