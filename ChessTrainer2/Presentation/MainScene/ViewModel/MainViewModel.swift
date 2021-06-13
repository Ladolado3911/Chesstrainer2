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

class MainViewModel: PickerView {

    var distributor: DataDistributor!
    var openingParser: OpeningParser!
    
    var openingPicker: UIPickerView!
    var difficultyPicker: UIPickerView!
    
    init(distributor object: DataDistributor,
         openingParser parser: OpeningParser,
         openingPicker picker1: UIPickerView,
         difficultyPicker picker2: UIPickerView) {
        super.init()
        distributor = object
        openingParser = parser
        
        openingPicker = picker1
        difficultyPicker = picker2
        
        configPickers()
    }

    func configPickers() {
        openingPicker.dataSource = self
        difficultyPicker.dataSource = self
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        switch component {
        case 0:
            return openingParser.uniqueOpeningNames.count
        case 1:
            return 5
        default:
            return 0
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch component {
        case 0:
            return "1"
        case 1:
            return "2"
        default:
            return "break"
        }
    }
}
