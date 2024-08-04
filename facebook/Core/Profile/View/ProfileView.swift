import SwiftUI

struct ProfileView: View {
    
    @Environment(\.dismiss) private var dismiss
    private var FacebookBlue = Color(red: 26/255, green: 103/255, blue:178/255)
    var body: some View {
        GeometryReader { proxy in
            ScrollView {
                LazyVStack(alignment: .leading, spacing: 16, pinnedViews: [.sectionHeaders]) {
                    ProfileHeaderView(width: proxy.size.width)
                    
                    Section(header: StickyHeader()) {
                        
                        ProfileFriendsView()
                        FriendsGrid().frame(width: proxy.size.width, height: 450)
                        ManagePostView(width: proxy.size.width)
                        
                        
                        //post status from profile
                        ProfilePostView()
                        ReelsNLiveView()
                        
                        
                        ForEach(0..<5){ _ in
                            
                            PostView(isVideo:false)
                        }
                        
                    }
                }
            }
            .scrollIndicators(.hidden)
            .navigationTitle("Maruf Khan")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button(action: {
                        dismiss.callAsFunction()
                    }, label: {
                        Image(systemName: "arrow.left").foregroundColor(.black).fontWeight(.bold)
                    })
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(systemName: "magnifyingglass").foregroundColor(.black).fontWeight(.bold)
                    })
                }
            }
        }
    }
}



#Preview {
    ProfileView()
}
