//
//  AlefTestApp.swift
//  AlefTest
//
//  Created by Максим Штанников on 29.11.2021.
//

import SwiftUI

@main
struct AlefTestApp: App {
  
  @StateObject var viewModel = MainViewModel()
  
  var body: some Scene {
    WindowGroup {
      MainView()
        .environmentObject(viewModel)
    }
  }
}
