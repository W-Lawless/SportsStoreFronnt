//
//  Shop.swift
//  Touchdown
//
//  Created by W Lawless on 4/4/21.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
