//
//  PageRow.swift
//  SwiftUIClassic
//
//  Created by suhaihua on 2021/12/7.
//

import SwiftUI

struct PageRow : View {
    
    private let title: String
    private let subTitle: String?
    
    init(title: String,subTitle: String? = nil) {
        self.title = title
        self.subTitle = subTitle
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(title).bold()
            if subTitle != nil {
                Text(subTitle!)
                    .font(.subheadline)
                    .opacity(0.5)
                    .lineLimit(nil)
            }
        }
    }
}

struct PageRow_Previews: PreviewProvider {
    static var previews: some View {
        PageRow(title: "").colorScheme(.dark)
    }
}
