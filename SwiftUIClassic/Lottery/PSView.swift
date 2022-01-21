//
//  PSView.swift
//  SwiftUIClassic
//
//  Created by suhaihua on 2021/12/7.
//

import SwiftUI

struct PSView: View {
    let numbers = ["1", "2", "3"]
    @State private var selectedNumber = 0
    @State private var stepperValue = 0
    var body: some View {
        NavigationView {
            VStack {
                Picker("Select hero", selection: $selectedNumber) {
                    ForEach(0..<100) {
                        Text("\($0)")
                    }
                }
                Stepper(value: $stepperValue, in: 1...100, step: 2) {
                    Text("\(stepperValue)")
                }
            }
            .navigationBarTitle("Picker And Stepper", displayMode: .inline)
        }
    }
}

struct PSView_Previews: PreviewProvider {
    static var previews: some View {
        PSView().colorScheme(.dark)
    }
}
