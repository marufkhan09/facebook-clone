//
//  CreatePostView.swift
//  facebook
//
//  Created by Maruf Khan on 3/8/24.
//

import SwiftUI

struct CreatePostView: View {
    @Environment(\.dismiss) private var dismiss
    @State private var mindText: String = ""
    
    var body: some View {
        NavigationStack {
            VStack(alignment:.leading){
                Divider()
                HStack(alignment:.top){
                   
                    NavigationLink(destination: ProfileView().navigationBarBackButtonHidden()) {
                        Image("profile").resizable().frame(width: 45,height: 45).clipShape(Circle())
                    }.padding(.horizontal,6)
                    
                    VStack (alignment:.leading){
                        Text("Maruf Khan").fontWeight(.bold)
                        HStack {
                            ChoiceView(imageName: "person.2.fill", title: "Friends", onTap: {})
                            ChoiceView(imageName: "", title: "Albums", onTap: {})
                        }
                        ChoiceView(imageName: "camera", title: "Off", onTap: {})
                   
                    }
                    
                }.padding(.horizontal).padding(.bottom)
                
                TextField(text: $mindText,axis:.vertical) {
                    Text("What's on your mind?")
                }.padding(.horizontal)
                
                Spacer()
                Divider()
                HStack{
                    Spacer()
                    Image(systemName: "photo.fill.on.rectangle.fill").resizable().scaledToFill().frame(width: 20,height: 20).foregroundColor(.green)
                    Spacer()
                    Image(systemName: "person.fill").resizable().scaledToFill().frame(width: 20,height: 20).foregroundColor(.blue)
                    Spacer()
                    Image(systemName: "face.smiling").resizable().scaledToFill().frame(width: 20,height: 20).foregroundColor(.yellow)
                    Spacer()
                    Image("pin").resizable().scaledToFill().frame(width: 20,height: 20).foregroundColor(.red)
                    Spacer()
                    Image(systemName: "ellipsis.circle.fill").resizable().scaledToFill().frame(width: 20,height: 20).foregroundColor(Color(.darkGray))
                    Spacer()
                }
            }.toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button(action: {
                        dismiss.callAsFunction()
                    }, label: {
                        HStack {
                            Image(systemName: "arrow.left").foregroundColor(.black).fontWeight(.bold)
                            Text("Create Post").foregroundStyle(.black)
                        }
                    })
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        dismiss.callAsFunction()
                    }, label: {
                        Text("Post").font(.subheadline).fontWeight(.semibold).frame(width: 80, height: 35, alignment: .center).foregroundStyle(mindText.count == 0 ? Color(.systemGray) : .white)
                            .background(mindText.count == 0 ? Color(.systemGray6) : .blue).clipShape(RoundedRectangle(cornerRadius: 6))
                    }).disabled(mindText.count == 0)
                }
            }
        }
    }
}

#Preview {
    CreatePostView()
}





