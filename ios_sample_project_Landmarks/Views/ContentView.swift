//
//  ContentView.swift
//  ios_sample_project_Landmarks
//
//  Created by Yuxin Song on 3/7/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView().frame(height: 300)
            
            CircleImage().offset(y: -130).padding(.bottom, -130)
            
            VStack(alignment: .trailing) {
                Text("Hello, world!").font(.title)
                HStack {
                    Spacer()
                    Text("Johua Tree National Park")
                    Text("CA")

                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                
                Divider()
                Text("About").font(.title)
                Text("Description").font(.subheadline)
            }
            .padding()
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
