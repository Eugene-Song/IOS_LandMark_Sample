//
//  landMark.swift
//  ios_sample_project_Landmarks
//
//  Created by Yuxin Song on 3/7/24.
//

import Foundation
import SwiftUI


struct Landmark: Hashable, Codable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String


    private var imageName: String
    
    var image: Image {
        Image(imageName)
    }
    
    private var coordinates: Coordinates


    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
