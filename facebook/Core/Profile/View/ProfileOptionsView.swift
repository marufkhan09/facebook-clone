//
//  ProfileOptionsView.swift
//  facebook
//
//  Created by Maruf Khan on 1/8/24.
//

import SwiftUI



struct ProfileOptionsView: View {
    @State private var chips = [
        ChipModel(name: "Posts",isSelected: true),
        ChipModel(name: "Photos",isSelected:false),
        ChipModel(name: "Reels",isSelected:false)
    ]
    
    @State private var selectedChip: UUID?
    
    private func selectChip(_ chip: ChipModel) {
        if selectedChip == chip.id {
            selectedChip = nil
        } else {
            selectedChip = chip.id
        }
        print("Selected chip: \(chip.name)")
    }

    // Method to find the initial selected chip ID
    private func getInitialChip() -> UUID? {
        return chips.first(where: { $0.isSelected })?.id
    }
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack {
                ForEach(chips) { chip in
                    ChipView(
                        name: chip.name,
                        isSelected: chip.id == selectedChip,
                        onTap: {
                            selectChip(chip)
                        }
                    )
                    
                }
            }.padding(.horizontal)
          
        }.scrollDisabled(true).onAppear {
            // Set the initial selected chip when the view appears
            selectedChip = getInitialChip()
        }
        .frame(height: 36).padding(.vertical,6)
    }
}

#Preview {
    ProfileOptionsView()
}
