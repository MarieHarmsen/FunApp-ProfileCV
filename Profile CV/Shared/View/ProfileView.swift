import SwiftUI

var ProfileView: some View {
    VStack {
        GeometryReader{ (proxy : GeometryProxy) in  // New Code
            VStack {
                ZStack {
                    Image("dogCode")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .edgesIgnoringSafeArea(.top)
                        .shadow(radius: 20)
                        .frame(height: 100)
                    Image("marie-harmsen")
                        .resizable()
                        .clipShape(Circle())
                        .frame(width: 100, height: 100)
                        .overlay(Circle().stroke(Color("ProfileBlue"), lineWidth: 4))
                        .shadow(radius: 10)
                        .offset(y: 220)
                }
                Text("Marie Harmsen")
                    .font(.title)
                    .fontWeight(.medium)
                    .offset(y: 220)
                Text("A computer science graduate with over 2 years of professional experience, specializing in iOS app development. Worked as a UX designer, however, found my passion to be in programming.I carry forward the customer-focused experience from UX design into software development.Currently working as an iOS developer in the financial industry.")
                    .offset(y: 230)
                    .padding(.leading, 40)
                    .padding(.trailing, 40)
            }
            .frame(width: proxy.size.width, height:proxy.size.height , alignment: .topLeading)
        }
    }
}
