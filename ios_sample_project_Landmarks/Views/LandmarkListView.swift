//
//  LandmarkListView.swift
//  ios_sample_project_Landmarks
//
//  Created by Yuxin Song on 3/7/24.
//

import SwiftUI

struct LandmarkListView: View {
    var body: some View {
        List(landmarks, id: \.uid){ landmark in
//            Text("\(landmark.uid)")
            LandmarkRowView(landmark: landmark)
        }
    }
}

#Preview {
    LandmarkListView()
}
