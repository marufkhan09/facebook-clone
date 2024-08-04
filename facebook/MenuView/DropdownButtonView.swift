//
//  DropdownButtonView.swift
//  facebook
//
//  Created by Maruf Khan on 5/8/24.
//

import SwiftUI

import SwiftUI

struct DropdownButtonView<Content: View>: View {
    @State private var isExpanded: Bool = false
    let title: String
    let leadingIcon: String
    let expandedContent: () -> Content
    
    var body: some View {
        VStack(alignment: .leading,spacing: 0) {
            Divider()
            Button(action: {
                withAnimation {
                    isExpanded.toggle()
                }
            }) {
                HStack {
                    Image(systemName: leadingIcon)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 24, height: 24).padding(.trailing).foregroundStyle(Color(.systemGray))
                    
                    Text(title)
                        .font(.headline)
                        .foregroundColor(.primary)
                    
                    Spacer()
                    
                    Image(systemName: isExpanded ? "chevron.up" : "chevron.down")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 14, height: 14)
                        .foregroundColor(.primary)
                }
                .padding()
                .background(Color.white)
                
            }
            
            if isExpanded {
                VStack(alignment: .leading,spacing: 0) {
                    expandedContent()
                }
                .transition(.slide)
                .padding(.horizontal)
            }
        }
    }
}



//
//#Preview {
//    DropdownButtonView()
//}
