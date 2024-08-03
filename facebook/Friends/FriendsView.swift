//
//  FriendsView.swift
//  facebook
//
//  Created by Maruf Khan on 3/8/24.
//

import SwiftUI

struct FriendsView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment:.leading ,spacing:16) {
                    HStack {
                        CustomButton(title: "Suggestions", backgroundColor: Color(.systemGray5), textColor: Color(.darkGray), iconColor: Color(.systemGray), cornerRadius: 25,width:140) {
                            
                        }
                        CustomButton(title: "Your friends", backgroundColor: Color(.systemGray5), textColor: Color(.darkGray), iconColor: Color(.systemGray), cornerRadius: 25,width:140) {
                            
                        }
                        Spacer()
                        
                    }
                    
                    Divider()
                    
                    HStack{
                        Text("Friend requests").fontWeight(.bold)
                        Text("3").fontWeight(.bold).foregroundStyle(.red)
                        Spacer()
                        Button {
                            
                        } label: {
                            Text("See all")
                        }

                    }
                    //list
                    
                    ForEach(0..<5){ _ in
                        FriendsCell(title: "Tomas Shelby", imageName: "profile")
                    }
                    
                    
                    
                    
                }.padding()

            }.scrollIndicators(.hidden)
                .toolbar{
                    ToolbarItem (placement: .topBarLeading){
                        Text("Friends").font(.title).fontWeight(.bold)
                    }
                    ToolbarItem (placement: .topBarTrailing){
                        Image(systemName: "magnifyingglass").resizable().scaledToFill().frame(width: 24,height: 24).font(.system(size: 18,weight: .bold))
                    }
                }
        }
    }
}

#Preview {
    FriendsView()
}

