import SwiftUI

struct HeadingContetnView: View {
    
    var heading: String
    var content: String
    
    var body: some View {
        VStack {
            Text(heading)
                .font(.title)
                .fontWeight(.medium)
            Text(content)
                .font(.body)
                .foregroundColor(.secondary)
        }
        .padding(40)
        Spacer()
    }
}
