//
//  ModelData.swift
//  landmark
//
//  Created by nina on 17/04/24.
//

import Foundation

class ModelData: ObservableObject {
    var landmarks: [Landmark] = load("landmarkData.json")
}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError("Couldn't find \(filename)")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load data: \(error) in \(filename)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse data: \(error) in \(filename)")
    }
}

