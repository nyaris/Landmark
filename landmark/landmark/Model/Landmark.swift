//
//  Landmark.swift
//  landmark
//
//  Created by nina on 17/04/24.
//

import CoreLocation
import SwiftUI

struct Landmark: Codable, Identifiable, Equatable {
    let id: Int
    let name: String
    let park: String
    let state: String
    let description: String
    var isFavorite: Bool
    private let imageName: String
    private let coordinates: Coordinates

    var image: Image {
        Image(imageName)
    }

    var locationCoordinate: CLLocationCoordinate2D {
        .init(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
}

struct Coordinates: Hashable, Codable {
    let latitude: Double
    let longitude: Double
}

