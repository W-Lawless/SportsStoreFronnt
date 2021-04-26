//
//  CategoryModel.swift
//  Touchdown
//
//  Created by W Lawless on 4/4/21.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
