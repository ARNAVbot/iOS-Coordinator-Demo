//
//  MainCoordinator.swift
//  CoordinatorDemo
//
//  Created by Arnav Agarwal on 02/05/21.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator {
    var childCoordinator = [Coordinator]()
    var navigationContorller: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationContorller = navigationController
    }
    
    func start() {
        let vc = ViewController.instantiate()
        vc.coordinator = self
        vc.flag = 5
        navigationContorller.pushViewController(vc, animated: true)
    }
    
    func buySubscription() {
        // Parent coordintor creating child coordinator to divide the work
        let child = BuyCoordinator(navigationController: navigationContorller)
        child.parentCoordinator = self
        childCoordinator.append(child)
        child.start()
    }
    
    func childDidFinish(_ child: Coordinator?) {
        for(index, coordinator) in childCoordinator.enumerated() {
            if coordinator === child {
                childCoordinator.remove(at: index)
                break
            }
        }
    }
    
    func createAccount() {
        let vc = CreateAccountViewController.instantiate()
        vc.coordinator = self
        navigationContorller.pushViewController(vc, animated: true)
    }
}
