//
//  ContentView.swift
//  ios_sample_project_Landmarks
//
//  Created by Yuxin Song on 3/7/24.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .featured

    enum Tab {
        case featured
        case list
    }
    var body: some View {
        TabView(selection: $selection) {
            CategoryHome()
                .tabItem {
                    Label("Featured", systemImage: "star")
                }
                .tag(Tab.featured)
            LandmarkListView()
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
                .tag(Tab.list)
        }
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
