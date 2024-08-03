import SwiftUI

struct CustomButton: View {
    var icon: Image?
    var title: String?
    var backgroundColor: Color
    var textColor: Color
    var iconColor: Color
    var cornerRadius: CGFloat
    var height: CGFloat?
    var width: CGFloat?
    var action: () -> Void
    
    var body: some View {
        Button(action: {
            action()
        }) {
            HStack(alignment: .center, spacing: 8) {
                if let icon = icon {
                    icon
                        .foregroundColor(iconColor)
                        .fontWeight(.semibold)
                }
                if let title = title {
                    Text(title)
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundColor(textColor)
                }
            }
            .frame(
                width: width,
                height: height ?? 44 // Default height if not provided
            )
            .background(backgroundColor)
            .cornerRadius(cornerRadius)
        }
    }
}
