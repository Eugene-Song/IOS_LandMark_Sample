//
//  landMark.swift
//  ios_sample_project_Landmarks
//
//  Created by Yuxin Song on 3/7/24.
//

import Foundation
import SwiftUI


struct landmark: Hashable, Codable {
    var uid: Int
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
    
    // Define the CodingKeys enum to map JSON keys to your struct's property names
        enum CodingKeys: String, CodingKey {
            case uid = "id" // Map the JSON key "id" to the property "uid"
            case name
            case park
            case state
            case description
            case imageName
            case coordinates
        }
}
