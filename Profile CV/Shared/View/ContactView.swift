import SwiftUI

var ContactView: some View {
    VStack {
        Image(systemName: "envelope")
                    .renderingMode(Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.original))
        HeadingContetnView(heading: "Contact me:",
                           content: "harmsen.mk@gmail.com")
    }
    .padding(40)
}
