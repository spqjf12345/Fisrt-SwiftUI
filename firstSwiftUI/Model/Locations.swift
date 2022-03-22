//
//  Locations.swift
//  firstSwiftUI
//
//  Created by JoSoJeong on 2021/03/19.
//

import Foundation

final class Locations: ObservableObject {
    let places: [Location]

    var primary: Location {
        places[0]
    }

    init() {
        let url = Bundle.main.url(forResource: "locations", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        places = try! JSONDecoder().decode([Location].self, from: data)
    }
}
