//
//  ContentView.swift
//  SwiftUIClassic
//
//  Created by suhaihua on 2021/12/7.
//

import SwiftUI

@available(iOS 15.0, *)
struct ContentView: View {
    @State private var showingAlert = false
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("text")) {
                    NavigationLink(destination: ForEachView()) {
                        PageRow(title: "ForEach", subTitle: "number in, $0, Int")
                    }
                    NavigationLink(destination: PSView()) {
                        PageRow(title: "Picker And Stepper", subTitle: "Picker, Stepper")
                    }
                    NavigationLink(destination: ButtonView()) {
                        PageRow(title: "Button", subTitle: "Button, Button(action)")
                    }
                    NavigationLink(destination: ListView()) {
                        PageRow(title: "List", subTitle: "List, List(..<)")
                    }
                    NavigationLink(destination: ASView()) {
                        PageRow(title: "ActionSheet", subTitle: "ActionSheet")
                    }
                }
                Section(header: Text("oranment")) {
                    NavigationLink(destination: LgView()) {
                        PageRow(title: "LinearGraident", subTitle: "LinearGraident")
                    }
                    NavigationLink(destination: BlurView()) {
                        PageRow(title: "Blur", subTitle: "Blur")
                    }
                    NavigationLink(destination: CIView()) {
                        PageRow(title: "CoreImage", subTitle: "CoreImage")
                    }
                    NavigationLink(destination: PhotoView()) {
                        PageRow(title: "Photos", subTitle: "PhotosUI, corrdinators")
                    }
                }
                Section(header: Text("sheet and alert")) {
                    NavigationLink(destination: SheetView()) {
                        PageRow(title: "Sheet And Alert", subTitle: "Sheet, Alert")
                    }
                }
                Section(header: Text("code")) {
                    NavigationLink(destination: classView()) {
                        PageRow(title: "class", subTitle: "Class, Class(2)")
                    }
                    NavigationLink(destination: EView()) {
                        PageRow(title: "Enum", subTitle: "Enum, View")
                    }
                }
            }
            .listStyle(GroupedListStyle())
            .navigationBarTitle(Text("SwiftUIClassic"), displayMode: .large)
        }
    }
}

@available(iOS 15.0, *)
struct ContentView_Previews: PreviewProvider {
    @available(iOS 15.0, *)
    static var previews: some View {
        ContentView().colorScheme(.dark)
    }
}
