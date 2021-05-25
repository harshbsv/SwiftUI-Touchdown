//
//  ProductModel.swift
//  Touchdown
//
//  Created by Harshvardhan Basava on 23/05/21.
//

import SwiftUI

struct ProductModel: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
    let price: Int
    let description: String
    let color: [Double]
    //computed properties
    var red: Double { return color[0] }
    var green: Double { return color [1] }
    var blue: Double { return color[2] }
    var formattedPrice: String { return "$\(price)" }
}
