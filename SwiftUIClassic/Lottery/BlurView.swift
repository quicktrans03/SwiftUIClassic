//
//  BlurView.swift
//  SwiftUIClassic
//
//  Created by suhaihua on 2021/12/10.
//

import SwiftUI

struct BlurView: View {
    @State private var blurAmount: CGFloat = 0
    var body: some View {
        NavigationView {
            let blur = Binding<CGFloat>(
                get: {
                    self.blurAmount
                },
                set: {
                    self.blurAmount = $0
                    print("New value is \(self.blurAmount)")
                }
            )
            VStack {
                Text("Hello, World!")
                    .blur(radius: blurAmount)
                
                Slider(value: blur, in: 0...20)
            }
            .navigationBarTitle("Blur", displayMode: .inline)
        }
    }
}

struct BlurView_Previews: PreviewProvider {
    static var previews: some View {
        BlurView().colorScheme(.dark)
    }
}
