//
//  EView.swift
//  SwiftUIClassic
//
//  Created by suhaihua on 2021/12/26.
//

import SwiftUI

@available(iOS 15.0, *)
enum LoadingState {
    case loading, success, failed
}

@available(iOS 15.0, *)
struct LoadingView: View {
    var body: some View{
        Text("Loading…")
    }
}

@available(iOS 15.0, *)
struct SuccessView: View {
    var body: some View{
        Text("Success!")
    }
}

@available(iOS 15.0, *)
struct FailedView: View {
    var body: some View{
        Text("Failed.")
    }
}

@available(iOS 15.0, *)
struct EView: View {
    var loadingState = LoadingState.loading
    var body: some View {
        NavigationView {
            VStack {
                switch loadingState {
                case .loading:
                    LoadingView()
                case .success:
                    SuccessView()
                case .failed:
                    FailedView()
                }
            }
            .navigationBarTitle("EnumView", displayMode: .inline)
        }
    }
}

@available(iOS 15.0, *)
struct EView_Previews: PreviewProvider {
    @available(iOS 15.0, *)
    static var previews: some View {
        EView().colorScheme(.dark)
    }
}
