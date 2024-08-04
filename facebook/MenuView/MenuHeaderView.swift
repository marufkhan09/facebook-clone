//
//  MenuHeaderView.swift
//  facebook
//
//  Created by Maruf Khan on 4/8/24.
//

import SwiftUI


struct MenuHeaderView: View {
    var body: some View {
        VStack{
            HStack(alignment: .center) {
                Image("profile")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                    .padding(.leading, 8)
                
                Text("Maruf Khan")
                    .padding(.leading, 8)
                
                Spacer()
                
                Image(systemName: "chevron.down.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(Color(.systemGray))
                    .frame(width: 24, height: 24)
            }
            .padding(.vertical, 8)
            
            Divider()
            
            HStack(alignment: .center) {
                Image(systemName: "plus.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                    .padding(.leading, 8)
                
                Text("Create another profile")
                    .padding(.leading, 8)
                
                Spacer()
            }
            .padding(.all, 8)
        }.padding()
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 8))
            .padding(.horizontal)
            .padding(.top)
    }
}

#Preview {
    MenuHeaderView()
}
