//
//  Hike.swift
//  ios_sample_project_Landmarks
//
//  Created by Yuxin Song on 3/10/24.
//

import Foundation

struct Hike: Codable, Hashable, Identifiable {
    var id: Int
    var name: String
    var distance: Double
    var difficulty: Int
    var observations: [Observation]
    
    static var formatter = LengthFormatter()
    
    var distanceText: String {
            Hike.formatter
                .string(fromValue: distance, unit: .kilometer)
    }
    struct Observation: Codable, Hashable {
        var distanceFromStart: Double
        var elevation: Range<Double>
        var pace: Range<Double>
        var heartRate: Range<Double>
    }
}
