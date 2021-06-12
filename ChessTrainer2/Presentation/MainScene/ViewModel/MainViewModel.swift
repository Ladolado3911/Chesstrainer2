//
//  MainViewModel.swift
//  ChessTrainer2
//
//  Created by lado tsivtsivadze on 6/12/21.
//

import Foundation
import UIKit

protocol ViewModel: AnyObject {
    
}

class MainViewModel: ViewModel {
    
    var distributor: DataDistributor!
    
    init(distributor object: DataDistributor) {
        distributor = object
    }

    
    
}
