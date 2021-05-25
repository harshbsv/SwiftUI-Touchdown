//
//  Constants.swift
//  Touchdown
//
//  Created by Harshvardhan Basava on 23/05/21.
//

import SwiftUI


//data
let players: [PlayerModel] = Bundle.main.decode("player.json")
let brands: [BrandModel] = Bundle.main.decode("brand.json")
let categories: [CategoryModel] = Bundle.main.decode("category.json")
let products: [ProductModel] = Bundle.main.decode("product.json")
let sampleProduct: ProductModel = products[0]
//color
let colorBackground: Color = Color("ColorBackground")
let colorGray: Color = Color(UIColor.systemGray4)
//layout
let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}
//ux
let feedback = UIImpactFeedbackGenerator(style: .medium)
//api

//image

//font

//string

//misc
