//
//  ProductManager.swift
//  Store
//
//  Created by Evgeniy Maksimov on 18.08.2024.
//

import Foundation

final class ProductManager {
    static let shared = ProductManager()
    var basket: [Product] = []

    private init() {}
}
