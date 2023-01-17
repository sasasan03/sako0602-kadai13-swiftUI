//
//  ContentView.swift
//  Sako0602-Kadai13-SwiftUI
//
//  Created by sako0602 on 2023/01/11.
//

import SwiftUI

struct Item {
    let id = UUID()
    let name: String
    let isChecked: Bool
}

struct ContentView: View {

   private let fruits = [
        Item(name: "りんご", isChecked: false),
        Item(name: "みかん", isChecked: true),
        Item(name: "バナナ", isChecked: false),
        Item(name: "パイナップル", isChecked: true),
        Item(name: "パイナップル", isChecked: false),
    ]

    var body: some View {
        List {
            ForEach(fruits, id: \.id) { element in
                HStack {
                    Image(
                        systemName: element.isChecked
                          ? "checkmark"
                          : ""
                    )
                    .frame(width: 30, height: 30)

                    Text(element.name)
                    
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

