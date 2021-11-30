//
//  ContentView.swift
//  AlefTest
//
//  Created by Максим Штанников on 29.11.2021.
// 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

import SwiftUI

struct MainView: View {
  
  @EnvironmentObject private var viewModel: MainViewModel
  
  var body: some View {
    ZStack {
      ScrollView(showsIndicators: false) {
        PersonInfoView()
        ChildrenInfoView()
        RoundedButton(text: "Очистить", imageName: nil, paddingHorizontal: 50) {
          viewModel.showSheet = true
        }
        .foregroundColor(.red)
        .opacity(viewModel.isEmty ? 0 : 1)
        .actionSheet(isPresented: $viewModel.showSheet) { actionSheet }
      }
      .blur(radius: viewModel.isShowDetail ? 7 : 0)
      AlertView()
    }
    .padding(20)
    .onTapGesture { hideKeyboard() }
  }
  
  private var actionSheet: ActionSheet {
    ActionSheet(title: Text("Очистить всё?"), buttons: [
      .cancel(),
      .default(Text("Очистить"), action: {
        withAnimation { viewModel.removeAll() }
      })
    ])
  }
}

struct Main_Previews: PreviewProvider {
  static var previews: some View {
    MainView()
      .environmentObject(MainViewModel())
  }
}
