//
//  LgView.swift
//  SwiftUIClassic
//
//  Created by suhaihua on 2021/12/9.
//

import SwiftUI

struct LgView: View {
    var body: some View {
        NavigationView {
            VStack {
                LinearGradient(gradient: Gradient(colors: [.red, .blue]), startPoint: /*@START_MENU_TOKEN@*/.bottom/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.top/*@END_MENU_TOKEN@*/)
            }
            .navigationBarTitle("LinearGradient", displayMode: .inline)
        }
    }
}

struct LgView_Previews: PreviewProvider {
    static var previews: some View {
        LgView().colorScheme(.dark)
    }
}
