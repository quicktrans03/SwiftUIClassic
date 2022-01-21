//
//  ForEachView.swift
//  SwiftUIClassic
//
//  Created by suhaihua on 2021/12/7.
//

import SwiftUI
@available(iOS 15.0, *)
struct User2: Identifiable, Comparable {
    let id = UUID()
    let firstName: String
    let lastName: String
    
    static func <(lhs: User2, rhs: User2) -> Bool {
        lhs.lastName < rhs.lastName
    }
}
@available(iOS 15.0, *)
struct ForEachView: View {
    let hero = ["黄继光", "董存瑞", "邱少云"]
    let users = [
        User2(firstName: "Arnold", lastName: "Rimmer"),
        User2(firstName: "Kristine", lastName: "Kochanski"),
        User2(firstName: "David", lastName: "Lister")
    ].sorted()
    @State private var selectedStudent = 0
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    ForEach(0..<2) { number in
                        Text("Row \(number)")
                    }
                }
                Form {
                    ForEach(0..<hero.count) {
                        Text("英雄\(self.hero[$0])")
                    }
                }
                Form {
                    ForEach(0..<2) {
                        Text("Row \($0)")
                    }
                }
                List(users) { user in
                    Text("\(user.firstName) \(user.lastName)")
                }
            }
            .navigationBarTitle("ForEach", displayMode: .inline)
        }
    }
}
@available(iOS 15.0, *)
struct ForEachView_Previews: PreviewProvider {
    static var previews: some View {
        ForEachView().colorScheme(.dark)
    }
}
