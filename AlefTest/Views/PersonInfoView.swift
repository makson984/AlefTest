//
//  PersonInfoView.swift
//  AlefTest
//
//  Created by Максим Штанников on 29.11.2021.
//

import SwiftUI

struct PersonInfoView: View {
  
  @EnvironmentObject private var viewModel: MainViewModel

  var body: some View {
    HStack {
      Text("Персональные данные")
        .font(Font.system(size: 20, weight: .regular, design: .default))
      Spacer()
    }
    .padding(.bottom, 20)
    BlockTextField(title: "Имя", text: $viewModel.name, keyboardType: .default)
    BlockTextField(title: "Возраст", text: $viewModel.age, keyboardType: .numberPad)
  }
}
