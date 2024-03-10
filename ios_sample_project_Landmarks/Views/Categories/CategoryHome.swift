//
//  CategoryHome.swift
//  ios_sample_project_Landmarks
//
//  Created by Yuxin Song on 3/10/24.
//

import SwiftUI

struct CategoryHome: View {
    var body: some View {
        NavigationSplitView {
            Text("Hello, World!")
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    CategoryHome()
}
