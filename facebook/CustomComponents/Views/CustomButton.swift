//
//  CustomButton.swift
//  facebook
//
//  Created by Maruf Khan on 30/7/24.
//
import SwiftUI

struct CustomButton: View {
    var icon: Image?
    var title: String?
    var backgroundColor: Color
    var textColor: Color
    var iconColor: Color
    var cornerRadius: CGFloat
    var height: CGFloat?
    var width: CGFloat?
    var action: () -> Void
    
    var body: some View {
        Button(action: {
            action()
        }) {
            HStack {
                if let icon = icon {
                    icon
                        .foregroundColor(iconColor).fontWeight(.semibold)
                }
                if let title = title {
                    Text(title).font(.system(size: 14)).fontWeight(.bold)
                        .foregroundColor(textColor)
                         // Add spacing if icon is present
                }
            }
            .frame(
                width: width,
                height: height ?? 44 // Default height if not provided
            )
            .padding(.horizontal,13) // Add padding if width is not specified
            .background(backgroundColor)
            .cornerRadius(cornerRadius)
        }
    }
}

