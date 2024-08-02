import SwiftUI

// ChipView to display a chip with tappable functionality
struct ChipView: View {
    let name: String
    let isSelected: Bool
    let onTap: () -> Void
    
    var body: some View {
        Text(name)
            .padding(.horizontal, 12)
            .padding(.vertical, 8)
            .background(
                RoundedRectangle(cornerRadius: 20)
                    .fill(isSelected ? Color.blue.opacity(0.1) : Color.clear)
            )
        
            .foregroundColor(isSelected ? Color.blue : Color.black)
            .onTapGesture {
                onTap()
            }
    }
}


#Preview(body: {
    ChipView(name: "Photos", isSelected: true) {
        print("Photos")
    }
})
