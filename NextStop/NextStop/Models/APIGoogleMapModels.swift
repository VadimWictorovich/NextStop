//
//  APIGoogleMapModels.swift
//  NextStop
//
//  Created by Вадим Игнатенко on 6.03.25.
//

import Foundation
import RealmSwift
import CoreLocation

final class CityModelforRealm: Object {
    @Persisted var name: String = ""
    var coordinates = CLLocationCoordinate2D(latitude: 0, longitude: 0)
}

struct CityModelforGoogleMaps {
    private let city : String
    private let coordinates : CLLocationCoordinate2D
}



