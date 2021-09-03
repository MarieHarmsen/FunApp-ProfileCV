//
//  ContentView.swift
//  Shared
//
//  Created by Marie Harmsen on 15/08/2021.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        let coloredAppearance = UINavigationBarAppearance()
        coloredAppearance.configureWithOpaqueBackground()
        coloredAppearance.backgroundColor = UIColor(named: "ProfileBlue")
        coloredAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        coloredAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        
        UINavigationBar.appearance().standardAppearance = coloredAppearance
        UINavigationBar.appearance().compactAppearance = coloredAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearance
        
        UINavigationBar.appearance().tintColor = .white
    }
    
    @State private var selection = 0
    
    var body: some View {
        NavigationView {
            TabView(selection: $selection) {
                ProfileView
                    .tabItem {
                        VStack {
                            Image(systemName: "person")
                            Text("Profile")
                        }
                    }
                    .tag(0)
                EducationView
                    .tabItem {
                        VStack {
                            Image(systemName: "book")
                            Text("Education")
                        }
                    }
                    .tag(1)
                WorkView
                    .tabItem {
                        VStack {
                            Image(systemName: "building")
                            Text("Work")
                        }
                    }
                    .tag(2)
                ProjectView
                    .font(.title)
                    .tabItem {
                        VStack {
                            Image(systemName: "pencil")
                            Text("Projects")
                        }
                    }
                    .tag(3)
                ContactView
                    .font(.title)
                    .tabItem {
                        VStack {
                            Image(systemName: "envelope")
                            Text("Contact")
                        }
                    }
                    .tag(4)
            }
            .navigationBarTitle(CommonStrings.appTitle)
            .navigationBarTitleDisplayMode(.inline)
            .accentColor(Color("ProfileBlue"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
