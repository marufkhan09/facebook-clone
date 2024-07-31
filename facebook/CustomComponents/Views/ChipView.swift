import SwiftUI


// ChipView to display a chip with tappable functionality
struct ChipView: View {
    let chip: ChipModel
    let isSelected: Bool
    let onTap: () -> Void
    
    var body: some View {
        Text(chip.name)
            .padding(.horizontal, 12)
            .padding(.vertical, 8)
            .background(
                RoundedRectangle(cornerRadius: 15)
                    .fill(isSelected ? Color.blue.opacity(0.1) : Color.clear)
            )
            .foregroundColor(isSelected ? Color.blue : Color.black)
            .onTapGesture {
                onTap()
            }
    }
}






