//
//  DividerView.swift
//  facebook
//
//  Created by Maruf Khan on 30/7/24.
//

import Foundation
import SwiftUI

struct DividerView: View {
    var body: some View {
        GeometryReader(content: { proxy in
            Rectangle().foregroundStyle(Color(.systemGray4)).frame(width: proxy.size.width,height: 2)
        })
    }
}
