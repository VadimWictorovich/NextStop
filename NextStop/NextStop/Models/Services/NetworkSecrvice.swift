//
//  NetworkSecrvice.swift
//  NextStop
//
//  Created by Вадим Игнатенко on 22.02.25.
//

import Foundation
import Combine
import Alamofire
import SwiftyJSON

struct Coordinates: Decodable {
    let lat: Double
    let lon: Double
}

final class NetworkSecrvice {
    
    static let shared = NetworkSecrvice()
    private init() {}
    
    func getCoordinates(for adress: String, callback: @escaping (_ data: Coordinates?, _ error: Error?) -> ()) {
        let keyAPI = "48334b3f-1b83-491f-9d1d-5b53184aa8de"
        let url = "https://geocode-maps.yandex.ru/1.x/?apikey=\(keyAPI)&geocode=\(adress)&format=json"
        AF.request(url, method: .get, encoding: JSONEncoding.default)
            .response { response in
                var getData: Coordinates?, error: Error?
                switch response.result {
                case .success(let data):
                    guard let data else {callback(nil, nil); return }
                    do { getData = try JSONDecoder().decode(Coordinates.self, from: data) }
                    catch(let decodError) { print(decodError) }
                case .failure(let err):
                    error = err
                }
                callback(getData, error)
            }
    }
}
