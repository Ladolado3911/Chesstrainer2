//
//  ViewController.swift
//  ChessTrainer2
//
//  Created by Ladolado3911 on 5/27/21.
//

import UIKit

class StartController: UIViewController {

    @IBOutlet weak var start: UIButton!
    
    
    
    
    
    lazy var openingGameController: OpeningGameController = {
        let vc = getController(storyboardID: .openingGame, controllerID: .openingGameController) as? OpeningGameController
        return vc!
    }()
    
    lazy var statsController: StatsController = {
        let vc = getController(storyboardID: .main, controllerID: .statsController) as? StatsController
        return vc!
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func onStart(_ sender: Any) {
        openingGameController.modalPresentationStyle = .fullScreen
        // set filters to openingGameController here
        present(openingGameController, animated: true)
    }
}

