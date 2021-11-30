//
//  MainViewModel.swift
//  AlefTest
//
//  Created by Максим Штанников on 29.11.2021.
//

import Foundation

class MainViewModel: ObservableObject {
  
  @Published var name = ""
  @Published var age = ""
  @Published var childName = ""
  @Published var childAge = ""
  @Published var children: [Child] = []
  @Published var isShowDetail = false
  @Published var showSheet = false
  private var number = 0
  let maxChildrenCount = 5
  
  var isEmty: Bool {
    children.count == 0 && name.isEmpty && age.isEmpty
  }
  
  func addChild() {
    let child = Child(id: number, name: childName, age: childAge)
    children.append(child)
    number += 1
    isShowDetail = false
    childName = ""
    childAge = ""
  }
  
  func remove(child: Child) {
    guard let index = children.firstIndex(where: { $0.id == child.id }) else { return }
    children.remove(at: index)
  }
  
  func removeAll() {
    name = ""
    age = ""
    childName = ""
    childAge = ""
    children = []
    number = 0
  }
}
