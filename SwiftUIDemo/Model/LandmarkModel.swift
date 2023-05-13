//
//  LandmarkModel.swift
//  SwiftUIDemo
//
//  Created by Gaurav Bisht on 16/04/23.
//

import Foundation
import SwiftUI
import CoreLocation

struct LandmarkModel: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var city: String
    var isFavorite: Bool
    
    private var imageName: String
    
    var image: Image {
        Image(imageName)
    }
    
    var coordinates: CoordinatesModel
    
    var locationCoordinate: CLLocationCoordinate2D {
            CLLocationCoordinate2D(
                latitude: coordinates.latitude,
                longitude: coordinates.longitude)
        }
}
