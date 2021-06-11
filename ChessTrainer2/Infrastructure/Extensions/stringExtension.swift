//
//  stringExtension.swift
//  ChessTrainer2
//
//  Created by Guest User on 6/11/21.
//

import Foundation
import UIKit

extension String {
    var moves: [String] {
        let pattern = "[BRQNK][a-h][1-8]?x[a-h][1-8]"
        do {
            let regex = try NSRegularExpression(pattern: pattern)
            let range = NSRange(self.startIndex..., in: self)
            let result = regex.matches(in: self, range: range)
            
            return result.map {
                String(self[Range($0.range, in: self)!])
            }
        }
        catch {
            print("Incorrect Regex")
            return []
        }
    }
}
