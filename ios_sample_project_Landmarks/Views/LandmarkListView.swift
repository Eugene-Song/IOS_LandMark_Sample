//
//  LandmarkListView.swift
//  ios_sample_project_Landmarks
//
//  Created by Yuxin Song on 3/7/24.
//

import SwiftUI

struct LandmarkListView: View {
    var body: some View {
        NavigationSplitView {
            List(landmarks){ landmark in
                NavigationLink {
                    LandmarkDetailView(landmark: landmark)
                } label: {
                    LandmarkRowView(landmark: landmark)
                }
            }
            .navigationTitle("LandMarks")
        } detail: {
            Text("Test Only")
        }

    }
}

#Preview {
    LandmarkListView()
}
