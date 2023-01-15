//
//  ContentView.swift
//  Sako0602-Kadai13-SwiftUI
//
//  Created by sako0602 on 2023/01/11.
//

import SwiftUI

struct ContentView: View {

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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

