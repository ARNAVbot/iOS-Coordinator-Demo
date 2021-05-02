//
//  BuyCoordinator.swift
//  CoordinatorDemo
//
//  Created by Arnav Agarwal on 02/05/21.
//

import Foundation
import UIKit

class BuyCoordinator: Coordinator {
    weak var parentCoordinator: MainCoordinator?
    var childCoordinator = [Coordinator]()
    var navigationContorller: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationContorller = navigationController
    }
    
    func start() {
        let vc = BuyViewController.instantiate()
        vc.coordinator = self
        navigationContorller.pushViewController(vc, animated: true)
    }
    
    func didFinishBuying() {
        parentCoordinator?.childDidFinish(self)
    }
}
