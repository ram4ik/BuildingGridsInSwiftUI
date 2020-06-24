//
//  ContentView.swift
//  BuildingGridsInSwiftUI
//
//  Created by Ramill Ibragimov on 24.06.2020.
//

import SwiftUI

struct ContentView: View {
    let data = Array(1...1000).map { "Item \($0)" }
    
    let layout = [
        GridItem(.adaptive(minimum: 80))
        //GridItem(.flexible())
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: layout, spacing: 20) {
                ForEach(data, id: \.self) { item in
                    Text(item)
                }
            }.padding(.horizontal)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
