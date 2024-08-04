//
//  SettingView.swift
//  facebook
//
//  Created by Maruf Khan on 5/8/24.
//

import SwiftUI


struct SettingView: View {
    var body: some View {
        ScrollView {
            VStack(spacing:0) {
                DropdownButtonView(title: "Help & Support", leadingIcon: "questionmark.circle.fill") {
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Option 1")
                        Text("Option 2")
                        Text("Option 3")
                    }
                    .padding()
                }
                
                DropdownButtonView(title: "Setting & Privacy", leadingIcon: "gearshape.fill") {
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Setting 1")
                        Text("Setting 2")
                        Text("Setting 3")
                    }
                    .padding()
                }
                DropdownButtonView(title: "Professional access", leadingIcon: "person.crop.circle.badge.exclamationmark") {
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Setting 1")
                        Text("Setting 2")
                        Text("Setting 3")
                    }
                    .padding()
                }
                DropdownButtonView(title: "Also from Meta", leadingIcon: "window.casement.closed") {
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Setting 1")
                        Text("Setting 2")
                        Text("Setting 3")
                    }
                    .padding()
                }
            }
            
        }
    }
}

#Preview {
    SettingView()
}
