//
//  NextStopApp.swift
//  NextStop
//
//  Created by Вадим Игнатенко on 21.02.25.
//

import SwiftUI
import GoogleMaps


@main
struct NextStopApp: App {
    init() {
        GMSServices.provideAPIKey("AIzaSyD9Vu9AdITdfmN7J7rQSlDkYmeTY3qUrHE")
    }
    
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
