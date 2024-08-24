//
//  StorageManager.swift
//  Store
//
//  Created by Evgeniy Maksimov on 16.08.2024.
//
import Foundation

final class StorageManager {
    static let shared = StorageManager()
    
    private let userKey = "user"
    private let userDefaults = UserDefaults.standard
    
    private init() {}
    
    func fetchUser() -> User {
        guard let userData = userDefaults.data(forKey: userKey) else {
            return User(name: nil, password: nil, phone: nil)
        }
        guard let user = try? JSONDecoder().decode(User.self, from: userData) else {
            return User(name: nil, password: nil, phone: nil)
        }
        return user
    }
    
    func save(_ user: User) {
        let userData = try? JSONEncoder().encode(user)
        userDefaults.set(userData, forKey: userKey)
    }
}
