import SwiftUI

struct FriendsGrid: View {
    // Array of images
    private let images = [
        "dwight",
        "pam",
        "profilePic1",
        "profilePic2"
    ]
    
    // Define the number of columns
    private let threeColumnGrid = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        GeometryReader { proxy in
            ScrollView {
                LazyVGrid(columns: threeColumnGrid, spacing: 10) {
                    ForEach(0..<images.count, id: \.self) { index in
                        VStack(alignment: .leading, spacing: 8) { // Consistent spacing between components
                            Image(images[index])
                                .resizable()
                                .scaledToFill()
                                .frame(width: proxy.size.width * 0.28, height: 130)
                                .clipped()
                            
                            VStack(alignment: .leading, spacing: 2) { // Consistent spacing for text
                                Text(images[index])
                                    .fontWeight(.semibold)
                                    .lineLimit(2)
                                    .padding(.horizontal, 8).frame(height: 44, alignment: .topLeading)
                                
                                HStack(alignment:.center,spacing:2) {
                                    Text("•").foregroundStyle(Color(.green)) .padding(.leading, 8)
                                    Text("Active Now").foregroundStyle(Color(.darkGray))
                                        .font(.caption2)
                                        .lineLimit(1)
                                  
                                }.padding(.bottom)
                            }
                        }
                        .frame(width: proxy.size.width * 0.28, height: 210, alignment: .top) // Fixed height and top alignment
                        .background(Color.gray.opacity(0.08))
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .shadow(color: Color.black.opacity(0.1), radius: 4, x: 0, y: 4)
                    }
                }
                .padding()
            }.scrollDisabled(true).scrollIndicators(.hidden)
        }
    }
}

// Preview for SwiftUI Canvas
#Preview {
    FriendsGrid()
}
