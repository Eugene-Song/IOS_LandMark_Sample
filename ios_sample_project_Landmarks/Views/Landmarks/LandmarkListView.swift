//
//  LandmarkListView.swift
//  ios_sample_project_Landmarks
//
//  Created by Yuxin Song on 3/7/24.
//

import SwiftUI

struct LandmarkListView: View {
    @Environment(ModelData.self) var modelData
    @State private var showFavoritesOnly = false
    
    var filteredList : [landmark] {
        modelData.landmarks.filter{ landmark in
        (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    var body: some View {
//        ScrollView{
            NavigationSplitView {
                List {
                    Toggle(isOn: $showFavoritesOnly) {
                        Text("Favorite Only")
                    }
                    
                    ForEach(filteredList){ landmark in
                        NavigationLink {
                            LandmarkDetailView(landmark: landmark)
                        } label: {
                            LandmarkRowView(landmark: landmark)
                        }
                    }
                }
                .animation(.default, value: filteredList)
                .navigationTitle("LandMarks")
            } detail: {
                Text("Test Only")
            }

//
    }
}

#Preview {
    LandmarkListView().environment(ModelData())
}
