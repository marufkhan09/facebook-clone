//
//  ProfileView.swift
//  facebook
//
//  Created by Maruf Khan on 29/7/24.
//

import SwiftUI

struct ProfileView: View {
    @State private var chips = [
        ChipModel(name: "Posts"),
        ChipModel(name: "Photos"),
        ChipModel(name: "Reels")
    ]
    @Environment(\.dismiss)  private var dismiss
    @State private var selectedChip: UUID?
    private func selectChip(_ chip: ChipModel) {
        if selectedChip == chip.id {
            selectedChip = nil
        } else {
            selectedChip = chip.id
        }
        print("Selected chip: \(chip.name)")
    }

    var body: some View {
        GeometryReader { proxy in
            ScrollView{
                ProfileHeaderView(width: proxy.size.width)
                DividerView()
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack {
                        ForEach(chips) { chip in
                            ChipView(
                                chip: chip,
                                isSelected: chip.id == selectedChip,
                                onTap: {
                                    selectChip(chip)
                                }
                            )
                            .padding(.horizontal, 5)
                        }
                    }
                    .padding(.horizontal)
                }
                .frame(height: 36) // Adjust height as needed
                
                
                
                
                
                
            }.scrollIndicators(.hidden).navigationTitle("Maruf khan").toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    
                    Button(action: {
                        dismiss.callAsFunction()
                    }, label: {
                        Image( systemName:"arrow.left").foregroundColor(.black).fontWeight(.bold)
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
