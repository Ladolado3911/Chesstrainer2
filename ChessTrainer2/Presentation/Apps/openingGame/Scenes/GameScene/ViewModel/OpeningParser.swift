//
//  OpeningParser.swift
//  ChessTrainer2
//
//  Created by Guest User on 6/11/21.
//

import Foundation
import UIKit

class OpeningParser {
    
    // filters
    var openingNameFilter: String!
    var difficultyFilter: Int!
    
    init(nameFilter name: String, difficultyFilter diff: Int) {
        openingNameFilter = name
        difficultyFilter = diff
    }
    
    
    func fetchData(completion: @escaping ([Opening]) -> Void) {
        let path = Bundle.main.path(forResource: "eco", ofType: "json")
        let url = URL(fileURLWithPath: path!)
        
        do {
            let data = try Data(contentsOf: url)
            let openings = try JSONDecoder().decode([JsonOpening].self, from: data)
            let entireData = openings.map { Opening(with: $0) }
            let filter1 = entireData.filter { $0.name.contains(openingNameFilter! ) }
            let result = filter1.filter { $0.movesCount == difficultyFilter! }
            completion(result)
            
        }
        catch {
            print("Could not get data")
        }
    }
}
