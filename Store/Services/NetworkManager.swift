//
//  NetworkManager.swift
//  Store
//
//  Created by Evgeniy Maksimov on 01.09.2024.
//

import Foundation

enum NetworkErrors: Error {
    case noData
}

final class NetworkManager {
    static let shared = NetworkManager()
    
    func postRequest(with parameters: Order, complishion: @escaping (Result<Order, NetworkErrors>) -> Void) {
        guard let encoderJson = try? JSONEncoder().encode(parameters) else {
            complishion(.failure(.noData))
            return
        }
        let url = URL(string:"https://jsonplaceholder.typicode.com/posts")!
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpBody = encoderJson
        
        URLSession.shared.dataTask(with: request) { data, responce, error in
            guard let data, let responce else {
                complishion(.failure(.noData))
                print(error?.localizedDescription ?? "No error")
                return
            }
            print(responce)
            
            do {
                let newOrder = try JSONDecoder().decode(Order.self, from: data)
                DispatchQueue.main.async {
                complishion(.success(newOrder))
                }
            } catch {
                complishion(.failure(.noData))
                print(error)
            }
        }.resume()
    }
}
