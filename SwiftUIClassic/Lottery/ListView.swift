//
//  ListView.swift
//  SwiftUIClassic
//
//  Created by suhaihua on 2021/12/9.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        NavigationView {
            VStack {
                List {
                    Text("Hello, World!")
                    Text("Hello, World!")
                    Text("Hello, World!")
                }
                List(0..<5) {
                    Text("Row \($0)")
                }
            }
            .navigationBarTitle("List", displayMode: .inline)
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView().colorScheme(.dark)
    }
}
