//
//  ChipModel.swift
//  facebook
//
//  Created by Maruf Khan on 31/7/24.
//

import Foundation

// ChipModel to represent each chip
struct ChipModel: Identifiable {
    let id = UUID()
    let name: String
    var isSelected: Bool = false
}
