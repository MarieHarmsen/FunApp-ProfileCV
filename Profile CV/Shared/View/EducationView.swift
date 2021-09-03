import SwiftUI

var EducationView: some View {
    ScrollView {
        VStack {
            ImageHeadlineHeadingTextView(image: "UniversityOfPretoria",
                                         headline: "University of Pretoia",
                                         heading: "Bachelor of Science: Information Science",
                                         text: "Course work in data structures and algorithms, Javascript, C#, etcCourse included computer science modules and a few design modules. Developed an infinite runner style game shown below.")
            ImageHeadlineHeadingTextView(image: "UniversityOfUnisa",
                                         headline: "University of Unisa",
                                         heading: "Bachelor of Science: Computer Science",
                                         text: "Course work in artificial intelligence, project management etc. Gathered big data from tweets to analyse correlation between perception of cryptocurrencies and the fluctuation of prices. Shown below:")
        }.padding(.top, 30)
    }
}
