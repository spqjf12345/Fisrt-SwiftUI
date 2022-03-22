//
//  Tip.swift
//  firstSwiftUI
//
//  Created by JoSoJeong on 2021/03/19.
//

import Foundation

struct Tip: Decodable {
    let text: String
    let children: [Tip]?
}
