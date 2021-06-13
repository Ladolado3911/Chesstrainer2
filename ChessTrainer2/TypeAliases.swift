//
//  TypeAliases.swift
//  ChessTrainer2
//
//  Created by Ladolado3911 on 6/6/21.
//

import Foundation
import UIKit

// https://www.youtube.com/watch?v=JLjbczkuOtA&ab_channel=Let%27sLearnSwift
// this link is video to learn how to use regex in swift

typealias Table = UITableViewDataSource & UITableViewDelegate
typealias Collect = UICollectionViewDataSource & UICollectionViewDelegateFlowLayout
typealias TableDataSource = Table & NSObject
typealias CollectDataSource = Collect & NSObject
typealias PickerView = UIPickerViewDataSource & UIPickerViewDelegate & NSObject


