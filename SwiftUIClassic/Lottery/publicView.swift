//
//  publicView.swift
//  SwiftUIClassic
//
//  Created by suhaihua on 2021/12/9.
//

import SwiftUI

struct publicView: View {
    var body: some View {
        NavigationView {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .navigationBarTitle("publicView", displayMode: .inline)
        }
    }
}

struct publicView_Previews: PreviewProvider {
    static var previews: some View {
        publicView().colorScheme(.dark)
    }
}
