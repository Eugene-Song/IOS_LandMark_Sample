//
//  LandmarkDetailView.swift
//  ios_sample_project_Landmarks
//
//  Created by Yuxin Song on 3/7/24.
//

import SwiftUI

struct LandmarkDetailView: View {
    @Environment(ModelData.self) var modelData
    var landmark: landmark
    
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: {$0.id == landmark.id})!
    }
    var body: some View {
        @Bindable var modelData = modelData
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 700)
            
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .trailing) {
                HStack {
                    Text(landmark.name)
                        .font(.title)
                    FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                }
     
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
    let modelData = ModelData()
    return LandmarkDetailView(landmark: modelData.landmarks[0])
        .environment(modelData)
}
