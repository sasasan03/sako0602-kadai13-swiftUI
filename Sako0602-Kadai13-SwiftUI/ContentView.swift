//
//  ContentView.swift
//  Sako0602-Kadai13-SwiftUI
//
//  Created by sako0602 on 2023/01/11.
//

import SwiftUI

struct ContentView: View {
    
    private let fruits = [
        Item(name: "りんご", isChecked: false),
        Item(name: "みかん", isChecked: true),
        Item(name: "なし", isChecked: false),
        Item(name: "パイナップル", isChecked: true)
    ]
    
    var body: some View {
        List {
            ForEach(fruits, id: \.id) { fruit in
                HStack {
                    Image(systemName: fruit.isChecked
                          ? "checkmark"
                          : ""
                    )
                    .frame(width: 30, height: 30)
                    Text(fruit.name)
                }
            }
        }
    }
}
struct Item {
    let id = UUID()
    let name: String
    let isChecked: Bool
    
}
    
/*
 private let fruits = [
      "りんご": false,
      "みかん": true,
      "バナナ": false,
      "パイナップル": true,
  ]

  var body: some View {
      List {
          ForEach(fruits.sorted{ $0.key < $1.key}, id: \.key) { element in
              
              HStack {
                  Image(
                      systemName: element.value
                        ? "checkmark"
                        : ""
                  )
                  
                  Text(element.key)
                  
              }
          }
      }
  }
}
 */

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

