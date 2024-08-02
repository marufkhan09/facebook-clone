//
//  FriendsCell.swift
//  facebook
//
//  Created by Maruf Khan on 3/8/24.
//

import SwiftUI


struct FriendsCell: View {
    private var title: String
    private var imageName:String
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
    var body: some View {
        HStack (alignment: .top,spacing: 12){
            Image(imageName).resizable().frame(width: 70,height: 70).clipShape(Circle())
            
            VStack(alignment:.leading){
                Text(title).font(.headline).fontWeight(.semibold)
                
                HStack{
                    CustomButton(title: "Confirm",
                                 backgroundColor: .blue, textColor: .white, iconColor: .blue, cornerRadius: 8,width:120) {
                        
                    }
                    CustomButton(title: "Delete",
                                 backgroundColor: Color(.systemGray5), textColor: Color(.systemGray), iconColor: .blue, cornerRadius: 8,width:120) {
                        
                    }
                }
            }
        }
    }
}

#Preview {
    FriendsCell(title: "Tomas Shelby", imageName: "profile")
}
