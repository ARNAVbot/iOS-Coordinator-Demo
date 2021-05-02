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
        vc.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 0)
        vc.coordinator = self
        vc.flag = 5
        navigationContorller.pushViewController(vc, animated: true)
    }
    
    func buySubscription() {
        let vc = BuyViewController.instantiate()
        vc.coordinator = self
        navigationContorller.pushViewController(vc, animated: true)
    }
    
    func createAccount() {
        let vc = CreateAccountViewController.instantiate()
        vc.coordinator = self
        navigationContorller.pushViewController(vc, animated: true)
    }
}
