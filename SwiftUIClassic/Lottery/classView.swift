//
//  classView.swift
//  SwiftUIClassic
//
//  Created by suhaihua on 2021/12/9.
//

import SwiftUI

class User: ObservableObject {
    @Published var firstName = "Taylor"
    @Published var lastName = "Swift"
    @Published var name = "Danny"
}

struct classView: View {
    @ObservedObject var user = User()
    var body: some View {
        NavigationView {
            VStack {
                List {
                    Text("Your name is \(user.firstName) \(user.lastName).")
                    TextField("firstName", text: $user.firstName)
                    TextField("lastName", text: $user.lastName)
                }
                List {
                    Text("Your name is \(user.name)。")
                    TextField("name", text: $user.name)
                }
            }
            .navigationBarTitle("class", displayMode: .inline)
        }
    }
}

struct classView_Previews: PreviewProvider {
    static var previews: some View {
        classView().colorScheme(.dark)
    }
}
