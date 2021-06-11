//
//  OpeningParser.swift
//  ChessTrainer2
//
//  Created by Guest User on 6/11/21.
//

import Foundation
import UIKit

class OpeningParser {
    
    
    
    func fetchData(completion: @escaping ([JsonOpeningModel]) -> Void) {
        let path = Bundle.main.path(forResource: "eco", ofType: "json")
        let url = URL(fileURLWithPath: path!)
        
        do {
            let data = try Data(contentsOf: url)
            let openings = try JSONDecoder().decode([JsonOpening].self, from: data)
            let result = openings.map { JsonOpeningModel(with: $0) }
            completion(result)
            
        }
        catch {
            print("Could not get data")
        }
    }
}
