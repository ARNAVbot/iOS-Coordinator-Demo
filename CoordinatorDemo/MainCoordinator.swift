//
//  MainCoordinator.swift
//  CoordinatorDemo
//
//  Created by Arnav Agarwal on 02/05/21.
//

import Foundation
import UIKit

class MainCoordinator: NSObject, Coordinator, UINavigationControllerDelegate {
    var childCoordinator = [Coordinator]()
    var navigationContorller: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationContorller = navigationController
    }
    
    func start() {
        navigationContorller.delegate = self
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
    
    func navigationController(_ navigationController: UINavigationController, didShow viewController: UIViewController, animated: Bool) {
        guard let fromViewController = navigationController.transitionCoordinator?.viewController(forKey: .from) else {
            return
        }
        // the below if checks whether the from view controller from which we are coming to the new view controller is already in the stack of navigation controllers or not.
        // if , this fromController is already in stack, then it means that we are pushing a new controller in the stack. If the from controller was already in the stack , then it means that the user has pressed back on the current controller (which is the fromController) and hence ,we need to remove it.
        if navigationController.viewControllers.contains(fromViewController) {
            return
        }
        // if the fromController is BuyViewController , we remove it. 
        if let buyViewController = fromViewController as? BuyViewController {
            childDidFinish(buyViewController.coordinator)
        }
    }
}
