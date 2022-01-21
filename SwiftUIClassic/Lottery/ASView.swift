//
//  ASView.swift
//  SwiftUIClassic
//
//  Created by suhaihua on 2021/12/11.
//

import SwiftUI

struct ASView: View {
    @State private var showingActionSheet = false
    @State private var backgroundColor = Color.black
    var body: some View {
        NavigationView {
            Text("Hello, World!")
                .frame(width: 300, height: 300)
                .background(backgroundColor)
                .onTapGesture {
                    self.showingActionSheet = true
                }
                .actionSheet(isPresented: $showingActionSheet) {
                    ActionSheet(title: Text("Change background"), message: Text("Select a new color"), buttons: [
                        .default(Text("Red")) { self.backgroundColor = .red },
                        .default(Text("Green")) { self.backgroundColor = .green },
                        .default(Text("Blue")) { self.backgroundColor = .blue },
                        .cancel()
                    ])
                }
                .navigationBarTitle("ActionSheet", displayMode: .inline)
        }
    }
}

struct ASView_Previews: PreviewProvider {
    static var previews: some View {
        ASView().colorScheme(.dark)
    }
}
