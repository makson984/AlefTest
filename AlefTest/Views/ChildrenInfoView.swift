//
//  ChildrenInfoView.swift
//  AlefTest
//
//  Created by Максим Штанников on 29.11.2021.
//

import SwiftUI

struct ChildrenInfoView: View {
  
  @EnvironmentObject var viewModel: MainViewModel
  
  var body: some View {
    VStack {
      HStack {
        Text("Дети (макс. 5)")
          .font(titleFont)
        Spacer()
        RoundedButton(text: "Добавить ребенка", imageName: "plus", paddingHorizontal: 0) {
          withAnimation { viewModel.isShowDetail = true }
        }
        .disabled(viewModel.children.count == viewModel.maxChildrenCount)
      }
      ForEach(viewModel.children) { child in
        VStack {
          ChildRow(child: child) {
            withAnimation { viewModel.remove(child: child) }
          }
          if child != viewModel.children.last {
            Divider()
          }
        }
      }
    }
  }
  
  private var titleFont: Font {
    Font.system(size: UIScreen.main.bounds.width * 0.045, weight: .regular, design: .default)
  }
}
