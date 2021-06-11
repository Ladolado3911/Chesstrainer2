//
//  GameModel.swift
//  ChessTrainer2
//
//  Created by Guest User on 6/11/21.
//

import Foundation
import UIKit


struct JsonOpening: Codable {
    var name: String?
    var moves: String?
}


struct JsonOpeningModel {
    
    var jsonOpening: JsonOpening
    
    init(with opening: JsonOpening) {
        jsonOpening = opening
    }
    
    var name: String {
        jsonOpening.name ?? ""
    }
    
    var moves: String {
        let rawString = jsonOpening.moves ?? ""
        return ""
    }
}
