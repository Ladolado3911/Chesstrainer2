//
//  GameController.swift
//  ChessTrainer2
//
//  Created by Ladolado3911 on 5/27/21.
//

import UIKit

class OpeningGameController: UIViewController {

    @IBOutlet weak var collectView: UICollectionView!
    @IBOutlet weak var openingName: UILabel!
    @IBOutlet weak var moveNum: UILabel!
    
    var dataSource: OpeningGameCollectionDataSource!

    override func viewDidLoad() {
        super.viewDidLoad()
        dataSource = OpeningGameCollectionDataSource(collectView: collectView, controller: self)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        dataSource.setInitialInfo()
    }
}
