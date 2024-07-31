//
//  ProfileHeaderView.swift
//  facebook
//
//  Created by Maruf Khan on 31/7/24.
//

import SwiftUI


struct ProfileHeaderView: View {
    var width: CGFloat
    var body: some View {
        ZStack(alignment:.top) {
            
            
            Image("cover_picture").resizable().scaledToFill().frame(width: width, height: 250)
            
            VStack(alignment:.leading, spacing:5){
                Spacer().frame(height: 150)
                HStack {
                    Image( "profile").resizable().scaledToFit().frame(width:150,height:150).clipShape(Circle()).foregroundColor(Color.white).font(.system(size: 18,weight:.bold)).overlay {
                        Circle().stroke(lineWidth: 3).foregroundStyle(Color(.systemGray4))
                        
                    }
                    Spacer()
                }.padding(.horizontal,24)
                
                VStack(alignment:.leading){
                    Text("Maruf Khan").font(.system(size: 28,weight: .bold))
                    HStack (spacing:2){
                        Text("600").font(.system(size:16,weight:.bold))
                        Text("Friends")
                    }
                    Text("Personal Bio Description").font(.system(size: 16,weight: .regular))
                    
                    HStack(alignment: .center,spacing: 10) {
                        CustomButton(icon:Image(systemName: "plus"), title: "Add to Story", backgroundColor: .blue, textColor: .white, iconColor: .white, cornerRadius: 8,width: (width*0.3)) {
                            
                        }
                        CustomButton(icon:Image(systemName: "pencil"), title: "Edit Profile", backgroundColor: Color(.systemGray4), textColor: Color(.black), iconColor: .black, cornerRadius: 8,width: (width*0.3)) {
                            
                        }
                        CustomButton(icon:Image(systemName: "ellipsis"), backgroundColor: Color(.systemGray4), textColor: Color(.black), iconColor: .black, cornerRadius: 8) {
                            
                        }
                    }
                }.padding(.horizontal)
                
                
            }
            
        }
    }
}


#Preview {
    ProfileHeaderView(width: 400)
}
