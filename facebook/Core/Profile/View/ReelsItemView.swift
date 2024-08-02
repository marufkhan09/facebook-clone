//
//  ReelsItemView.swift
//  facebook
//
//  Created by Maruf Khan on 3/8/24.
//

import SwiftUI

struct ReelsItemView: View {
    private var title: String
    private var imagename: String
    
    init(title: String, imagename: String) {
        self.title = title
        self.imagename = imagename
    }
    
    
    var body: some View {
        HStack(alignment:.center) {
            Image(systemName:imagename).foregroundStyle(.red
            )
            Text(title)
        } .padding(.horizontal, 12)
            .padding(.vertical, 8)
            .background(
                RoundedRectangle(cornerRadius: 20)
                    .fill( Color.white)
            )
            .foregroundColor(Color.black)
            .onTapGesture {
                
            }
    }
}

#Preview {
    ReelsItemView(title: "Reels", imagename: "play.rectangle.fill")
}
