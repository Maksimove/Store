//
//  Order.swift
//  Store
//
//  Created by Evgeniy Maksimov on 26.08.2024.
//

struct Order: Codable {
    let name: String
    let phone: Int
    let address: String
    let products: [Product]
}
