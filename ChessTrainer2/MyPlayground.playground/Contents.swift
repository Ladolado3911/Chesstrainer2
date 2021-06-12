import UIKit

extension String {
    var moves: [String] {
        self.split(separator: " ").filter { !$0.contains(".") }.map { String($0) }
    }
}



let rawString = "1. e4 Nf6 2. e5 Nd5 3. d4"
let moves = rawString.moves

print(moves)
