//
//  LandMarkRowView.swift
//  ios_sample_project_Landmarks
//
//  Created by Yuxin Song on 3/7/24.
//

import SwiftUI

struct LandmarkRowView: View {
    var landmark: landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
        }
        
    }
}

#Preview() {
    Group {
        LandmarkRowView(landmark: landmarks[0])
        Divider()
        LandmarkRowView(landmark: landmarks[1])
    }
}
