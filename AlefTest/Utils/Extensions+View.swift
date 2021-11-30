//
//  Extensions+View.swift
//  AlefTest
//
//  Created by Максим Штанников on 29.11.2021.
//

import SwiftUI

extension View {
  func hideKeyboard() {
    UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
  }
}

