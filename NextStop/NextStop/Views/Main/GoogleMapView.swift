//
//  ViewWithMap.swift
//  NextStop
//
//  Created by Вадим Игнатенко on 26.02.25.
//

import SwiftUI
import GoogleMaps

struct GoogleMapView: UIViewRepresentable {

    
    func makeUIView(context: Context) -> GMSMapView {
        let camera = GMSCameraPosition.camera(withLatitude: 55.751244, longitude: 37.618423, zoom: 10)
        let mapView = GMSMapView.map(withFrame: .zero, camera: camera)
        if let mapStyle = Bundle.main.url(forResource: "dark_style", withExtension: "json") {
            mapView.mapStyle = try? GMSMapStyle(contentsOfFileURL: mapStyle)
        }
        return mapView
    }
    
    
    func updateUIView(_ uiView: GMSMapView, context: Context) {
        
    }
    
}

