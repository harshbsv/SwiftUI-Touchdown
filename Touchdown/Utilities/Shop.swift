//
//  Shop.swift
//  Touchdown
//
//  Created by Harshvardhan Basava on 24/05/21.
//

import Foundation

class Shop: ObservableObject {
  @Published var showingProduct: Bool = false
  @Published var selectedProduct: ProductModel? //= nil
}
