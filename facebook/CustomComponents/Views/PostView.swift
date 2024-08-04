//
//  PostView.swift
//  facebook
//
//  Created by Maruf Khan on 30/7/24.
//

import SwiftUI
import AVKit


struct PostView: View {
    private var facebookBlue:Color = Color(red: 26/255, green: 103/255, blue:178/255)
    
    private var isVideo: Bool
    
    init(isVideo: Bool) {
        self.isVideo = isVideo
    }

    var body: some View {
        VStack(alignment:.leading){
            HStack{
                //circled image
                Image("profile").resizable().frame(width: 40,height: 40).clipShape(Circle())
                //name and the time of the post
                VStack (alignment: .leading,spacing: 0 ){
                    Text("Maruf Khan")
                    
                    HStack (spacing:5){
                        Text("1 d")
                        Circle().frame(width: 2,height: 2).fontWeight(.bold)
                        Image(systemName: "globe")
                    }.font(.system(size: 12)).foregroundColor(facebookBlue)
                }
                Spacer()
                //more and close button
                HStack(spacing:24){
                    Image(systemName: "ellipsis")
                    Image(systemName: "xmark")
                }.foregroundStyle(Color(.darkGray)).fontWeight(.bold)
                
            }.padding(.horizontal)
            //caption
            Text("Time to party with the team").padding(.horizontal)
            //post photo
            if(!isVideo){
                Image("office").resizable().scaledToFit()
            }else {
                VideoPlayerView(videoURL: "https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4")
            }
            
            //like, comment and share
            HStack(spacing:3){
                Image("like").resizable().frame(width: 18,height:18)
                Text("5")
                Spacer()
                Text("3 Comments")
                
                Text("•")
                Text("2 Shares")
            }.padding(.horizontal,10).font(.system(size: 12)).foregroundStyle(facebookBlue)
            
            Divider().background(.white.opacity(0.5))
            
            HStack{
                Spacer()
                HStack{
                    Image(systemName: "hand.thumbsup")
                    Text("Like")
                }
                Spacer()
                Spacer()
                HStack{
                    Image(systemName: "message")
                    Text("Comment")
                }
                Spacer()
                Spacer()
                HStack{
                    Image("icone-messager-noir").resizable().frame(width: 20, height: 20).foregroundStyle(Color(.systemGray))
                    Text("Send")
                }
                Spacer()
                Spacer()
                HStack{
                    Image(systemName: "arrowshape.turn.up.right")
                    Text("Share")
                }
                
                Spacer()
            }.font(.system(size: 12)).foregroundStyle(Color(.systemGray))
            DividerView()
        }
    }
}

#Preview {
    PostView(isVideo: false)
}
