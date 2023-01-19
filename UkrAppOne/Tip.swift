//
//  Tip.swift
//  UkrAppOne
//
//  Created by Nick Pavlov on 1/16/23.
//

import Foundation

struct Tip: Decodable {
    let text: String
    let children: [Tip]?
}
