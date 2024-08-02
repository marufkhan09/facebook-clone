//
//  ChoiceView.swift
//  facebook
//
//  Created by Maruf Khan on 3/8/24.
//

import SwiftUI

struct ChoiceView: View {
    private var imageName: String
    private var title: String
    private var onTap: () -> Void
    init(imageName: String, title: String, onTap: @escaping () -> Void) {
        self.imageName = imageName
        self.title = title
        self.onTap = onTap
    }
    var body: some View {
        Button(action: {
            onTap()
        }, label: {
            HStack (spacing:10){
                Image(systemName: imageName)
                Text(title).font(.subheadline)
                Text("▼").font(.system(size: 14))
            }.padding(.horizontal).padding(.vertical,6).background(Color(.systemGray6)).fontWeight(.bold).clipShape(RoundedRectangle(cornerRadius: 8))
        })
    }
}

#Preview {
    ChoiceView(imageName: "person.2.fill", title: "Friends", onTap: {})
}
