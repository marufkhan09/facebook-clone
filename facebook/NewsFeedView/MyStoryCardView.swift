//
//  MyStoryCardView.swift
//  facebook
//
//  Created by Maruf Khan on 30/7/24.
//

import SwiftUI


struct MyStoryCardView: View {
   
    var body: some View {
            ZStack(alignment:.top) {
                RoundedRectangle(cornerRadius: 15).foregroundColor(Color(.systemGray6)).frame(width: 100, height: 170)
                
                Image("profile").resizable().scaledToFill().frame(width: 100, height: 110).clipShape(UnevenRoundedRectangle(topLeadingRadius: 15,topTrailingRadius:  15))
                
                VStack(spacing:5){
                    Spacer().frame(height: 90)
                    Image(systemName: "plus").padding(5).background(.blue).clipShape(Circle()).foregroundColor(Color.white).font(.system(size: 18,weight:.bold)).overlay {
                        Circle().stroke(lineWidth: 3).foregroundStyle(Color(.systemGray6))
                        
                        
                    }
                    VStack (spacing:0){
                        Text("Create")
                        Text("Story")
                    }.font(.system(size: 12,weight:.bold))
                }
                
            }
        
    }
}

#Preview {
    MyStoryCardView()
}
