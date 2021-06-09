//
//  API_Helper.swift
//  LadoTsivtsivadze_20
//
//  Created by Ladolado3911 on 5/27/21.
//

import Foundation
import UIKit

enum Endpoint: String {
    case news = "https://run.mocky.io/v3/c8ee15ab-17dc-44bb-aa64-a01f3f75ffa2"
    
    var url: URL? {
        return URL(string: self.rawValue)
    }
}

protocol NetworkManagerProtocol: AnyObject {
    func fetchData<T:Codable>(using endpoint: Endpoint, completion: @escaping (Result<T, Error>) -> Void)
    
    
}

class API: NetworkManagerProtocol {
    
    static let shared = API()
    private init() {}

    func fetchData<T:Codable>(using endpoint: Endpoint, completion: @escaping (Result<T, Error>) -> Void) {
        guard let url = endpoint.url else { return }
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                completion(.failure(error))
            }
            
            if let newData = data {
                do {
                    let decoded = try JSONDecoder().decode(T.self, from: newData)
                    completion(.success(decoded))
                }
                catch {
                    print("Could not decode")
                    print(error)
                    completion(.failure(error))
                }
            }
            else {
                print("Could not unwrap data")
            }
        }.resume()
    }
}
