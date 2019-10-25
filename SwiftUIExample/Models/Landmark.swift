//
//  Landmark.swift
//  SwiftUIExample
//
//  Created by Satoshi Ito on 2019/10/26.
//  Copyright © 2019 Satoshi Ito. All rights reserved.
//

import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable {
    private var imageName: String
    private var coordinates: Coordinates

    var id: Int
    var name: String
    var state: String
    var park: String
    var category: Category
    var isFavorite: Bool
    var isFeatured: Bool

    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }

    enum Category: String, CaseIterable, Codable, Hashable {
        case featured = "Featured"
        case lakes = "Lakes"
        case rivers = "Rivers"
        case mountains = "Mountains"
    }
}

extension Landmark {
    var image: Image {
        ImageStore.shared.image(name: imageName)
    }
}

struct Coordinates: Hashable, Codable {
    var latitude: Double
    var longitude: Double
}
