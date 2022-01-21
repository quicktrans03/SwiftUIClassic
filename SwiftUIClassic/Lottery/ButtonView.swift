//
//  ButtonView.swift
//  SwiftUIClassic
//
//  Created by suhaihua on 2021/12/8.
//

import SwiftUI

struct ButtonView: View {
    @State private var showingAlert1 = false
    @State private var showingAlert2 = false
    var body: some View {
        NavigationView {
            VStack {
                Button("Button1") {
                    self.showingAlert1 = true
                }
                .foregroundColor(.orange)
                .alert(isPresented: $showingAlert1) {
                    Alert(title: Text("Info"), message: Text("Button was tapped"), dismissButton: .default(Text("OK")))
                }
                Button(action: {
                    self.showingAlert2 = true
                }){
                    Text("Button2")
                        .foregroundColor(Color.orange)
                }
                .alert(isPresented: $showingAlert2) {
                    Alert(title: Text("Info"), message: Text("Button was tapped"), dismissButton: .default(Text("OK")))
                }
                Button("Button3", action: save)
                    .foregroundColor(.orange)
                Text("Tap Gesture")
                    .onTapGesture {
                        let str = "Tap gesture was tapped!"
                        let url = getDocumentsDirectory().appendingPathComponent("message.txt")
                        do {
                            try str.write(to: url, atomically: true, encoding: .utf8)
                            let input = try String(contentsOf: url)
                            print(input)
                        } catch {
                            print(error.localizedDescription)
                        }
                    }
            }
            .navigationBarTitle("Picker And Stepper", displayMode: .inline)
        }
    }
    func save() {
        print("Button was tapped!")
    }
    func getDocumentsDirectory() -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView().colorScheme(.dark)
    }
}
