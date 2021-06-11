//
//  OpeningViewModel.swift
//  ChessTrainer2
//
//  Created by Guest User on 6/11/21.
//

import Foundation
import UIKit

class OpeningViewModel {
    
    var openingParser: OpeningParser!
    
    init(with parser: OpeningParser) {
        openingParser = parser
    }
    
    func getData(completion: @escaping ([JsonOpeningModel])  -> Void) {
        openingParser.fetchData { jsonModels in
            DispatchQueue.main.async {
                completion(jsonModels)
            }
        }
    }
}
