//
//  Pasta.swift
//  Pastapedia
//
//  Created by Nadia Barbosa on 12/29/20.
//

import Foundation

enum PastaSize: String, Decodable, CaseIterable {
    case xsmall
    case small
    case medium
    case large
    
    func readableSize() -> String {
        switch self {
        case .xsmall:
            return "Tiny"
        case .small:
            return "Small"
        case .medium:
            return "Medium"
        case .large:
            return "Large"
        }
    }
}

struct Pasta: Decodable, Identifiable {
    var id: Int
    var name: String
    var size: PastaSize
    var description: String
    var alternativeNames: [String]?
    var region: String?
}

var allPastas: [Pasta] = load("pasta.json")

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }

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
