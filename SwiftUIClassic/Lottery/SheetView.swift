//
//  SheetView.swift
//  SwiftUIClassic
//
//  Created by suhaihua on 2021/12/9.
//

import SwiftUI

struct SheetView: View {
    @State private var showingSheet = false
    @State private var showingAlert = false
    var body: some View {
        NavigationView {
            VStack {
                Button("sheet") {
                    self.showingSheet = true
                }
                .sheet(isPresented: $showingSheet) {
                    publicView().colorScheme(.dark)
                }
                .foregroundColor(/*@START_MENU_TOKEN@*/.orange/*@END_MENU_TOKEN@*/)
                Button("Alert") {
                    self.showingAlert = true
                }
                .foregroundColor(.orange)
                .alert(isPresented: $showingAlert) {
                    Alert(title: Text("Info"), message: Text("Button was tapped"), dismissButton: .default(Text("OK")))
                }
            }
            .navigationBarTitle("Sheet And Alert", displayMode: .inline)
        }
    }
}

struct SheetView_Previews: PreviewProvider {
    static var previews: some View {
        SheetView().colorScheme(.dark)
    }
}
