//
//  LandmarkDetailView.swift
//  ios_sample_project_Landmarks
//
//  Created by Yuxin Song on 3/7/24.
//

import SwiftUI

struct LandmarkDetailView: View {
    var landmark: landmark
    
    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 700)
            
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .trailing) {
                Text(landmark.name)
                    .font(.title)
                HStack {
                    Spacer()
                    Text(landmark.park)
                    Text(landmark.state)

                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                
                Divider()
                Text("About \(landmark.name)")
                    .font(.title)
                Text(landmark.description)
                    .font(.subheadline)
            }
            .padding()
            Spacer()
        }
        .padding(.top, -400)
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    LandmarkDetailView(landmark: landmarks[0])
}
