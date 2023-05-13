//
//  ModelData.swift
//  SwiftUIDemo
//
//  Created by Gaurav Bisht on 16/04/23.
//

import Foundation

var landmarks: [LandmarkModel] = load(filename: "landmarkData", extensions: "json")

func load<T: Codable>(filename: String, extensions: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: extensions)
    else { fatalError("Couldn't find \(filename) in main bundle.") }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
