//
//  ManagePostView.swift
//  facebook
//
//  Created by Maruf Khan on 3/8/24.
//

import SwiftUI

struct ManagePostView: View {
    private var width: CGFloat
    init(width: CGFloat) {
        self.width = width
    }
    var body: some View {
        CustomButton(title: "See all friends", backgroundColor: Color(.systemGray4), textColor: Color(.black), iconColor: .black, cornerRadius: 8, width: (width - 60)) {
            
        }.padding(.horizontal).padding(.bottom,24)
    }
}

#Preview {
    ManagePostView(width: 200)
}
