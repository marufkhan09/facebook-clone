import SwiftUI

struct MarketPlaceView: View {
    var body: some View {
        
         let twoColumnGrid = [
            GridItem(.flexible()),
            GridItem(.flexible())
        ]
        
        // Array of images
         let images = [
            "apartment1",
            "apartment2",
            "car1",
            "car2",
            "sofa1",
            "sofa2",
            "profile"
        ]
        
        
        NavigationStack {
            GeometryReader { proxy in
                let padding = proxy.safeAreaInsets.leading + proxy.safeAreaInsets.trailing
                let totalWidth = proxy.size.width - padding
                let itemWidth = totalWidth / 2 - 24 // Subtracting half the spacing
                
                ScrollView {
                    VStack {
                        HStack(spacing: 16) {
                            CustomButton(
                                icon: Image(systemName: "square.and.pencil"),
                                title: "Sell",
                                backgroundColor: Color(.systemGray5),
                                textColor: Color(.darkGray),
                                iconColor: Color(.systemGray),
                                cornerRadius: 25,
                                height: 44,
                                width: itemWidth
                            ) {
                                // Action for Sell button
                            }
                            
                            CustomButton(
                                icon: Image(systemName: "list.bullet"),
                                title: "Categories",
                                backgroundColor: Color(.systemGray5),
                                textColor: Color(.darkGray),
                                iconColor: Color(.systemGray),
                                cornerRadius: 25,
                                height: 44,
                                width: itemWidth
                            ) {
                                // Action for Categories button
                            }
                        }.padding()
                        
                        Divider()
                        
                        
                        HStack {
                            Text("Today's picks").font(.headline).fontWeight(.semibold)
                            Spacer()
                            CustomButton(icon:Image("pin"),title:"Dhaka,Bangladesh",backgroundColor: Color(.white), textColor: .blue, iconColor: .blue, cornerRadius: 0) {
                                
                            }
                            
                            
                        }.padding(.horizontal)
                        
                
                        LazyVGrid(columns: twoColumnGrid, spacing: 0) {
                            ForEach(0..<images.count, id: \.self) { index in
                                VStack(alignment: .center, spacing: 10) { // Consistent spacing between components
                                    Image(images[index])
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: proxy.size.width * 0.48, height: proxy.size.width * 0.48)
                                        .clipped()
                                    
                                    Text(images[index])
                                        .fontWeight(.semibold)
                                        .lineLimit(2)
                                        .padding(.horizontal, 8).frame(height: 44, alignment: .topLeading)
                                }
                            }
                        }.padding(.horizontal,8)
                       
                    }
                }
                .scrollIndicators(.hidden)
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        Text("Marketplace")
                            .font(.title)
                            .fontWeight(.bold)
                    }
                    ToolbarItem(placement: .topBarTrailing) {
                        HStack(spacing: 24) {
                            Image(systemName: "person.fill")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 24, height: 24)
                                .font(.system(size: 18, weight: .bold))
                            Image(systemName: "magnifyingglass")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 24, height: 24)
                                .font(.system(size: 18, weight: .bold))
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    MarketPlaceView()
}
